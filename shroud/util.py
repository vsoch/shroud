# Copyright (c) 2017-2019, Lawrence Livermore National Security, LLC.
#
# Produced at the Lawrence Livermore National Laboratory
#
# LLNL-CODE-738041.
#
# All rights reserved.
#
# This file is part of Shroud.
#
# For details about use and distribution, please read LICENSE.
#
########################################################################
from __future__ import print_function
from __future__ import absolute_import

import collections
import os
import string

fmt = string.Formatter()

TEMP = False  # True = process namespace

def wformat(template, dct):
    # shorthand, wrap fmt.vformat
    assert template is not None
    try:
        return fmt.vformat(template, None, dct)
    except AttributeError:
        #        raise        # uncomment for detailed backtrace
        # use %r to avoid expanding tabs
        raise SystemExit("Error with template: " + "%r" % template)


def append_format(lstout, template, fmt):
    """Format template and append to lstout.
    """
    # shorthand, wrap fmt.vformat
    lstout.append(wformat(template, fmt))


def append_format_lst(lstout, lstin, fmt):
    """Format entries in lstin and append to lstout.
    """
    for template in lstin:
        lstout.append(wformat(template, fmt))


def append_format_cmds(lstout, dictin, name, fmt):
    """Format entries in dictin[name] and append to lstout.
    Return True if found.
    Used with c_statements and py_statements.

    Args:
      lstout - list to append output lines to.
      dictin - could be c_statements.intent_in.
      name - entry into dictin. ex. "decl", "pre_call", "post_call".
      fmt - format dictionary or Scope instance.
    """
    cmd_list = dictin.get(name, None)
    if cmd_list is None:
        return False
    for cmd in cmd_list:
        lstout.append(wformat(cmd, fmt))
    return True


def append_format_indent(lst, template, dct, indent="    "):
    """Split lines, indent each by 4 blanks, append to out.
    """
    lines = wformat(template, dct)
    for line in lines.split("\n"):
        lst.append(indent + line)


# http://stackoverflow.com/questions/1175208/elegant-python-function-to-convert-camelcase-to-camel-case
def un_camel(text):
    """ Converts a CamelCase name into an under_score name.

        >>> un_camel('CamelCase')
        'camel_case'
        >>> un_camel('getHTTPResponseCode')
        'get_http_response_code'
    """
    result = []
    pos = 0
    while pos < len(text):
        if text[pos].isupper():
            if (
                pos - 1 > 0
                and text[pos - 1].islower()
                or pos - 1 > 0
                and pos + 1 < len(text)
                and text[pos + 1].islower()
            ):
                result.append("_%s" % text[pos].lower())
            else:
                result.append(text[pos].lower())
        else:
            result.append(text[pos])
        pos += 1
    return "".join(result)


# http://stackoverflow.com/questions/3232943/update-value-of-a-nested-dictionary-of-varying-depth
def update(d, u):
    for k, v in u.items():
        if isinstance(v, collections.Mapping):
            r = update(d.get(k, {}), v)
            d[k] = r
        else:
            d[k] = u[k]
    return d


def as_yaml(obj, order, indent, output):
    """Write out obj in YAML syntax
    obj    - a dictionary or an instance with attributes to dump.
    order  - order of keys to dump
    indent - indention level.
    output - list of output lines.

    This is not really intendent to be a general routine.
    It has some knowledge of what it expects in order to create
    a YAML file similar to what a user may write.
    """

    prefix = "  " * indent
    for key in order:
        if isinstance(obj, collections.Mapping):
            value = obj[key]
        else:
            value = getattr(obj, key)

        if not value:
            # skip empty values such as None or {}
            pass
        elif isinstance(value, str):
            # avoid treating strings as a sequence
            # quote strings which start with { to avoid treating them
            # as a dictionary.
            if value.startswith("{"):
                output.append('{}{}: "{}"'.format(prefix, key, value))
            else:
                output.append("{}{}: {}".format(prefix, key, value))
        elif isinstance(value, collections.Sequence):
            # Keys which are are an array of string (code templates)
            if key in (
                "declare",
                "pre_call",
                "pre_call_trim",
                "post_call",
                "post_parse",
                "ctor",
            ):
                output.append("{}{}: |".format(prefix, key))
                for i in value:
                    output.append("{}  {}".format(prefix, i))
            else:
                output.append("{}{}:".format(prefix, key))
                for i in value:
                    output.append("{}- {}".format(prefix, i))
        elif isinstance(value, collections.Mapping):
            output.append("{}{}:".format(prefix, key))
            order0 = value.keys()
            order0.sort()
            as_yaml(value, order0, indent + 1, output)
        else:
            # numbers or booleans
            output.append("{}{}: {}".format(prefix, key, value))


def extern_C(output, position):
    """Create extern "C" guards for C++
    """
    if position == "begin":
        output.extend(["#ifdef __cplusplus", 'extern "C" {', "#endif"])
    else:
        output.extend(["#ifdef __cplusplus", "}", "#endif"])


class WrapperMixin(object):
    """Methods common to all wrapping classes.
    """

    #####

    def _init_splicer(self, splicers):
        self.splicers = splicers
        self.splicer_stack = [splicers]
        self.splicer_names = []
        self.splicer_path = ""

    def _push_splicer(self, name):
        level = self.splicer_stack[-1].setdefault(name, {})
        self.splicer_stack.append(level)
        self.splicer_names.append(name)
        self.splicer_path = ".".join(self.splicer_names) + "."

    def _pop_splicer(self, name):
        # XXX maybe use name for error checking, must pop in reverse order
        self.splicer_stack.pop()
        self.splicer_names.pop()
        if self.splicer_names:
            self.splicer_path = ".".join(self.splicer_names) + "."
        else:
            self.splicer_path = ""

    def _create_splicer(self, name, out, default=[]):
        """Insert a splicer with *name* into list *out*.
        Use the splicer from the splicer_stack if it exists.
        This allows the user to replace the default text.
        Return true if code was added to out, else false.
        TODO:
          Option to ignore splicer stack to generate original code
        """
        # The prefix is needed when two different sets of output
        # are being create and they are not in sync.
        # Creating methods and derived types together.
        show_splicer_comments = self.newlibrary.options.show_splicer_comments
        if show_splicer_comments:
            out.append(
                "%s splicer begin %s%s"
                % (self.comment, self.splicer_path, name)
            )
        code = self.splicer_stack[-1].get(name, default)
        if code:
            added_code = True
            out.extend(code)
        else:
            added_code = False
        if show_splicer_comments:
            out.append(
                "%s splicer end %s%s" % (self.comment, self.splicer_path, name)
            )
        return added_code

    #####

    def write_namespace(self, cls, position, output, comment=True):
        """Write nested namespace statements.
        cls - ClassNode to wrap
        position - 'begin' or 'end'
        output   - append generated code to list output
        comment  - True = add comment to ending brace
        """
        if cls:
            namespace = cls.typemap.name.split("::")
            namespace.pop()  # remove class name
        else:
            namespace = []
        if not namespace:
            return
        if position == "begin":
            for name in namespace:
                output.append("namespace %s {" % name)
                output.append(1)
        else:
            lst = namespace
            lst.reverse()
            for name in lst:
                output.append(-1)
                if comment:
                    output.append("}  // namespace %s" % name)
                else:
                    output.append("}")

    def add_statements_headers(self, intent_blk):
        """Add headers required by intent_blk to self.header_impl_include.

        Args:
            intent_blk -
        """
        # include any dependent header in generated source
        if self.language == "c":
            headers = intent_blk.get("c_header", None)
        else:
            headers = intent_blk.get("cxx_header", None)
        if headers:
            for h in headers.split():
                self.header_impl_include[h] = True

    def write_headers(self, headers, output):
        for header in sorted(headers):
            if header[0] == "<":
                output.append("#include %s" % header)
            else:
                output.append('#include "%s"' % header)

    def write_headers_nodes(self, lang_header, types, hlist, output):
        """Write out headers required by types

        lang_header - "c_header"
        types - dictionary of Typemap nodes.
        hlist -
        output - append lines of code.

        types - dictionary[typedef.name] = typedef
        hlist - list of headers to include
                From helper routines

        headers[hdr] [ typedef, None, ... ]
        None from helper files
        """
        # find which headers are required and who requires them
        headers = {}
        for hdr in hlist:
            headers.setdefault(hdr, []).append(None)

        for typedef in types.values():
            hdr = getattr(typedef, lang_header)
            if hdr:
                headers.setdefault(hdr, []).append(typedef)

        if headers:
            output.append("")
        for hdr in sorted(headers):
            if len(headers[hdr]) == 1:
                # Only one type uses the include, check for if_cpp
                # For example, add conditional around mpi.h
                typedef = headers[hdr][0]
                if typedef and typedef.cpp_if:
                    output.append("#" + typedef.cpp_if)
                if hdr[0] == "<":
                    output.append("#include %s" % hdr)
                else:
                    output.append('#include "%s"' % hdr)
                if typedef and typedef.cpp_if:
                    output.append("#endif")
            else:
                # XXX - unclear how to mix header and cpp_if
                # so always include the file
                if hdr[0] == "<":
                    output.append("#include %s" % hdr)
                else:
                    output.append('#include "%s"' % hdr)

    #####

    def write_output_file(self, fname, directory, output, spaces="    "):
        """
        fname  - file name
        directory - output directory
        output - list of lines to write
        """
        fp = open(os.path.join(directory, fname), "w")
        fp.write("%s %s\n" % (self.comment, fname))
        fp.write(self.comment + " This is generated code, do not edit\n")
        self.write_copyright(fp)
        self.indent = 0
        self.write_lines(fp, output, spaces)
        fp.close()
        self.log.write("Close %s\n" % fname)
        print("Wrote", fname)

    def write_copyright(self, fp):
        """
        Write the copyright from the input YAML file.
        """
        for line in self.newlibrary.copyright:
            if line:
                fp.write(self.comment + " " + line + "\n")
            else:
                # convert None to blank line
                fp.write(self.comment + "\n")

    def write_continue(self, fp, line, spaces="    "):
        """
        If the line starts with \r, then double the indent.
        Helpful for Fortran declarations.

        A tab is a convenient place to break the line and should
        be placed before whitespace since leading whitespace is trimmed.
        i.e.   "arg1,\t arg2"
        """
        linelen = self.linelen
        indent = 1
        subline = spaces * self.indent
        nparts = 0

        if line[0] == "\r":
            indent = 2
            line = line[1:]

        # Find tabs and formfeeds
        parts = []
        part = ""
        for ch in line:
            if ch == "\t":
                if part:
                    parts.append(part)
                    part = ""
            elif ch == "\f":
                if part:
                    parts.append(part)
                    part = ""
                parts.append("\f")
            else:
                part += ch
        if part:
            parts.append(part)

        for part in parts:
            if not part:
                # \t\f results in
                continue
            dump = False
            save = True
            if part == "\f":  # formfeed
                # write out line now, this must not be the last part
                dump = True
                save = False  # don't save newline
            elif len(subline) + len(part) > linelen:
                # Next line will be too long, dump line now
                # unless part by itself is exceeds linelen
                if nparts > 0:
                    dump = True
            if dump:
                fp.write(subline + self.cont + "\n")
                subline = spaces * (self.indent + indent)
                nparts = 0
                part = part.lstrip()
                if not part:
                    save = False
            if save:
                subline += part
                nparts += 1
        fp.write(subline + "\n")

    def write_lines(self, fp, lines, spaces="    "):
        """ Write lines with indention and newlines.

        #  preprocessor, start in column 1
        @  literal line (ignore leading formating characters
        ^  start line in column 1
        +  indent line
        -  deindent line
        """
        for line in lines:
            if isinstance(line, int):
                self.indent += int(line)
            else:
                for subline in line.split("\n"):
                    if len(subline) == 0:
                        fp.write("\n")
                    elif subline[0] == "#":
                        # preprocessing directives work better in column 1
                        fp.write(subline)
                        fp.write("\n")
                    elif subline[0] == "@":
                        # literal line with indent
                        # For example, "@-" to avoid treating the "-" as deindent
                        # or "@0" to start line with a "0".
                        self.write_continue(fp, subline[1:], spaces)
                    elif subline[0] == "^":
                        # line start in column 1 (like labels)
                        fp.write(subline[1:])
                        fp.write("\n")
                    elif subline[0] == "+":
                        #   +text[-]
                        self.indent += 1
                        if subline[-1] == "-":
                            # indent a single line
                            self.write_continue(fp, subline[1:-1], spaces)
                            self.indent -= 1
                        else:
                            self.write_continue(fp, subline[1:], spaces)
                    else:
                        # [-]*text[+]
                        while subline[0] == "-":
                            self.indent -= 1
                            subline = subline[1:]
                        if subline[-1] == "+":
                            self.write_continue(fp, subline[:-1], spaces)
                            self.indent += 1
                        else:
                            self.write_continue(fp, subline, spaces)

    def write_doxygen_file(self, output, fname, library, cls):
        """ Write a doxygen comment block for a file.
        """
        node = cls or library
        output.append(self.doxygen_begin)
        output.append(self.doxygen_cont + " \\file %s" % fname)
        if cls:
            output.append(
                self.doxygen_cont
                + " \\brief Shroud generated wrapper for {} class".format(
                    node.name
                )
            )
        else:
            output.append(
                self.doxygen_cont
                + " \\brief Shroud generated wrapper for {} library".format(
                    node.library
                )
            )
        output.append(self.doxygen_end)

    def write_doxygen(self, output, docs):
        """Write a doxygen comment block for a function.
        Uses brief, description, and return from docs.
        """
        output.append(self.doxygen_begin)
        if "brief" in docs:
            output.append(self.doxygen_cont + " \\brief %s" % docs["brief"])
            output.append(self.doxygen_cont)
        if "description" in docs:
            desc = docs["description"]
            if desc.endswith("\n"):
                lines = docs["description"].split("\n")
                lines.pop()  # remove trailing newline
            else:
                lines = [desc]
            for line in lines:
                output.append(self.doxygen_cont + " " + line)
        if "return" in docs:
            output.append(self.doxygen_cont)
            output.append(self.doxygen_cont + " \\return %s" % docs["return"])
        output.append(self.doxygen_end)


class Scope(object):
    """
    Create a scoped dictionary-like object.
    If item is not found, look in parent.
    A replacement for a dictionary to allow obj.name syntax.
    It will automatically look in __parent for attribute if not found to allow
    A nesting of options.
    Use __attr to avoid xporting to json
    """

    def __init__(self, parent, **kw):
        self.__parent = parent
        self.__hidden = 43
        self.update(kw)

    def __getattr__(self, name):
        # we get here if the attribute does not exist in current instance
        if self.__parent:
            return getattr(self.__parent, name)
        else:
            raise AttributeError(
                "%r object has no attribute %r"
                % (self.__class__.__name__, name)
            )

    def __getitem__(self, key):
        """ Treat as dictionary for format command.
        """
        return getattr(self, key)

    def __contains__(self, item):
        return hasattr(self, item)

    def __repr__(self):
        return str(self._to_dict())

    def get(self, key, value=None):
        """ D.get(k[,d]) -> D[k] if k in D, else d.  d defaults to None.
        """
        try:
            return getattr(self, key)
        except AttributeError:
            return value

    def setdefault(self, key, value=None):
        """ D.setdefault(k[,d]) -> D.get(k,d), also set D[k]=d if k not in D
        """
        if key not in self.__dict__:
            self.__dict__[key] = value
        return self.__dict__.get(key, value)

    def update(self, d, replace=True):
        """Add attributes from dictionary to self.
        """
        for key, value in d.items():
            if replace:
                setattr(self, key, value)
            elif not hasattr(self, key):
                setattr(self, key, value)

    def inlocal(self, key):
        """ Return true if key is defined locally
        i.e. does not check parent.
        """
        return key in self.__dict__

    def delattrs(self, lst):
        """Remove a list of attributes from the local dictionary."""
        for key in lst:
            if key in self.__dict__:
                del self.__dict__[key]

    def clone(self):
        """return new Scope with same inlocal and parent"""
        new = Scope(self.__parent)
        skip = "_" + self.__class__.__name__ + "__"  # __name is skipped
        for key, value in self.__dict__.items():
            if not key.startswith(skip):
                new.__dict__[key] = value
        return new

    def reparent(self, parent):
        """Change the parent node."""
        self.__parent = parent

    def get_parent(self):
        """Return parent"""
        return self.__parent

    def trace(self, key, header=True):
        """Help debug where a symbol is found."""
        if header:
            print("XXXXXXXXXX", key)
        if key in self.__dict__:
            print("TRACE {}: {}  {}".format(key, id(self), self.__dict__[key]))
        elif self.__parent:
            print("TRACE {}: {}".format(key, id(self)))
            self.__parent.trace(key, header=False)

    def _to_dict(self):
        d = {}
        skip = "_" + self.__class__.__name__ + "__"  # __name is skipped
        for key, value in self.__dict__.items():
            if not key.startswith(skip):
                d[key] = value
        return d

    def _to_full_dict(self, d=None):
        if d is None:
            d = self._to_dict()
        else:
            d.update(self._to_dict())
        if self.__parent:
            self.__parent._to_full_dict(d)
        return d
