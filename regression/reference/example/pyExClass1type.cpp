// pyExClass1type.cpp
// This is generated code, do not edit
// Copyright (c) 2017-2019, Lawrence Livermore National Security, LLC.
//
// Produced at the Lawrence Livermore National Laboratory
//
// LLNL-CODE-738041.
//
// All rights reserved.
//
// This file is part of Shroud.
//
// For details about use and distribution, please read LICENSE.
//
// #######################################################################
#include "pyUserLibrarymodule.hpp"
#include "ExClass1.hpp"
// splicer begin class.ExClass1.impl.include
// splicer end class.ExClass1.impl.include

#ifdef __cplusplus
#define SHROUD_UNUSED(param)
#else
#define SHROUD_UNUSED(param) param
#endif

#if PY_MAJOR_VERSION >= 3
#define PyInt_AsLong PyLong_AsLong
#define PyInt_FromLong PyLong_FromLong
#define PyString_FromString PyUnicode_FromString
#define PyString_FromStringAndSize PyUnicode_FromStringAndSize
#endif
// splicer begin class.ExClass1.impl.C_definition
// splicer end class.ExClass1.impl.C_definition
// splicer begin class.ExClass1.impl.additional_methods
// splicer end class.ExClass1.impl.additional_methods
static PyObject *
PP_ExClass1_tp_repr (PP_ExClass1 *self)
{
// splicer begin class.ExClass1.type.repr
    repr code
// splicer end class.ExClass1.type.repr
}
static void
PP_ExClass1_tp_del (PP_ExClass1 *self)
{
// splicer begin class.ExClass1.type.del
    delete self->obj;
    self->obj = NULL;
// splicer end class.ExClass1.type.del
}
static PyObject *
PP_ExClass1_tp_richcompare (PP_ExClass1 *self, PyObject *other, int opid)
{
// splicer begin class.ExClass1.type.richcompare
    Py_INCREF(Py_NotImplemented);
    return Py_NotImplemented;
// splicer end class.ExClass1.type.richcompare
}

static int
PP_ExClass1_tp_init_0(
  PP_ExClass1 *self,
  PyObject *SHROUD_UNUSED(args),
  PyObject *SHROUD_UNUSED(kwds))
{
// ExClass1()
// splicer begin class.ExClass1.method.ctor_0
    self->obj = new example::nested::ExClass1();
    return 0;
// splicer end class.ExClass1.method.ctor_0
}

/**
 * \brief constructor
 *
 * longer description
 * usually multiple lines
 *
 * \return return new instance
 */
static int
PP_ExClass1_tp_init_1(
  PP_ExClass1 *self,
  PyObject *args,
  PyObject *kwds)
{
// ExClass1(const string * name +intent(in))
// splicer begin class.ExClass1.method.ctor_1
    const char * name;
    const char *SHT_kwlist[] = {
        "name",
        NULL };

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "s:ctor",
        const_cast<char **>(SHT_kwlist), &name))
        return -1;

    // post_parse
    const std::string SH_name(name);

    self->obj = new example::nested::ExClass1(&SH_name);
    return 0;
// splicer end class.ExClass1.method.ctor_1
}

static char PP_exclass1_incrementCount__doc__[] =
"documentation"
;

static PyObject *
PP_exclass1_incrementCount(
  PP_ExClass1 *self,
  PyObject *args,
  PyObject *kwds)
{
// int incrementCount(int incr +intent(in)+value)
// splicer begin class.ExClass1.method.increment_count
    int incr;
    const char *SHT_kwlist[] = {
        "incr",
        NULL };

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "i:incrementCount",
        const_cast<char **>(SHT_kwlist), &incr))
        return NULL;

    int SHC_rv = self->obj->incrementCount(incr);

    // post_call
    PyObject * SHTPy_rv = PyInt_FromLong(SHC_rv);

    return (PyObject *) SHTPy_rv;
// splicer end class.ExClass1.method.increment_count
}

static char PP_exclass1_getNameErrorPattern__doc__[] =
"documentation"
;

static PyObject *
PP_exclass1_getNameErrorPattern(
  PP_ExClass1 *self,
  PyObject *SHROUD_UNUSED(args),
  PyObject *SHROUD_UNUSED(kwds))
{
// const string & getNameErrorPattern() const +deref(result_as_arg)+len(aa_exclass1_get_name_length({F_this}%{F_derived_member}))
// splicer begin class.ExClass1.method.get_name_error_pattern
    const std::string & SHCXX_rv = self->obj->getNameErrorPattern();
    if (! isNameValid(rv)) {
        PyErr_SetString(PyExc_KeyError, "XXX need value of name");
        return NULL;
    }


    // post_call
    PyObject * SHTPy_rv = PyString_FromStringAndSize(SHCXX_rv.data(),
        SHCXX_rv.size());

    return (PyObject *) SHTPy_rv;
// splicer end class.ExClass1.method.get_name_error_pattern
}

static char PP_exclass1_GetNameLength__doc__[] =
"documentation"
;

/**
 * \brief helper function for Fortran to get length of name.
 *
 */
static PyObject *
PP_exclass1_GetNameLength(
  PP_ExClass1 *self,
  PyObject *SHROUD_UNUSED(args),
  PyObject *SHROUD_UNUSED(kwds))
{
// int GetNameLength() const
// splicer begin class.ExClass1.method.get_name_length
    int SHC_rv = self->obj->GetNameLength();

    // post_call
    PyObject * SHTPy_rv = PyInt_FromLong(SHC_rv);

    return (PyObject *) SHTPy_rv;
// splicer end class.ExClass1.method.get_name_length
}

static char PP_exclass1_getNameErrorCheck__doc__[] =
"documentation"
;

static PyObject *
PP_exclass1_getNameErrorCheck(
  PP_ExClass1 *self,
  PyObject *SHROUD_UNUSED(args),
  PyObject *SHROUD_UNUSED(kwds))
{
// const string & getNameErrorCheck() const +deref(allocatable)
// splicer begin class.ExClass1.method.get_name_error_check
    const std::string & SHCXX_rv = self->obj->getNameErrorCheck();

    // post_call
    PyObject * SHTPy_rv = PyString_FromStringAndSize(SHCXX_rv.data(),
        SHCXX_rv.size());

    return (PyObject *) SHTPy_rv;
// splicer end class.ExClass1.method.get_name_error_check
}

static char PP_exclass1_getNameArg__doc__[] =
"documentation"
;

static PyObject *
PP_exclass1_getNameArg(
  PP_ExClass1 *self,
  PyObject *SHROUD_UNUSED(args),
  PyObject *SHROUD_UNUSED(kwds))
{
// const string & getNameArg() const +deref(result_as_arg)
// splicer begin class.ExClass1.method.get_name_arg
    const std::string & SHCXX_rv = self->obj->getNameArg();

    // post_call
    PyObject * SHTPy_rv = PyString_FromStringAndSize(SHCXX_rv.data(),
        SHCXX_rv.size());

    return (PyObject *) SHTPy_rv;
// splicer end class.ExClass1.method.get_name_arg
}

static char PP_exclass1_getRoot__doc__[] =
"documentation"
;

static PyObject *
PP_exclass1_getRoot(
  PP_ExClass1 *self,
  PyObject *SHROUD_UNUSED(args),
  PyObject *SHROUD_UNUSED(kwds))
{
// void * getRoot()
// splicer begin class.ExClass1.method.get_root
    void * SHC_rv = self->obj->getRoot();

    // post_call
    PyObject * SHTPy_rv = PyCapsule_New(SHC_rv, NULL, NULL);

    return (PyObject *) SHTPy_rv;
// splicer end class.ExClass1.method.get_root
}

static PyObject *
PP_exclass1_getValue_from_int(
  PP_ExClass1 *self,
  PyObject *args,
  PyObject *kwds)
{
// int getValue(int value +intent(in)+value)
// splicer begin class.ExClass1.method.get_value_from_int
    int value;
    const char *SHT_kwlist[] = {
        "value",
        NULL };

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "i:getValue",
        const_cast<char **>(SHT_kwlist), &value))
        return NULL;

    int SHC_rv = self->obj->getValue(value);

    // post_call
    PyObject * SHTPy_rv = PyInt_FromLong(SHC_rv);

    return (PyObject *) SHTPy_rv;
// splicer end class.ExClass1.method.get_value_from_int
}

static PyObject *
PP_exclass1_getValue_1(
  PP_ExClass1 *self,
  PyObject *args,
  PyObject *kwds)
{
// long getValue(long value +intent(in)+value)
// splicer begin class.ExClass1.method.get_value_1
    long value;
    const char *SHT_kwlist[] = {
        "value",
        NULL };

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "l:getValue",
        const_cast<char **>(SHT_kwlist), &value))
        return NULL;

    long SHC_rv = self->obj->getValue(value);

    // post_call
    PyObject * SHTPy_rv = PyInt_FromLong(SHC_rv);

    return (PyObject *) SHTPy_rv;
// splicer end class.ExClass1.method.get_value_1
}

static char PP_exclass1_getAddr__doc__[] =
"documentation"
;

static PyObject *
PP_exclass1_getAddr(
  PP_ExClass1 *self,
  PyObject *SHROUD_UNUSED(args),
  PyObject *SHROUD_UNUSED(kwds))
{
// void * getAddr()
// splicer begin class.ExClass1.method.get_addr
    void * SHC_rv = self->obj->getAddr();

    // post_call
    PyObject * SHTPy_rv = PyCapsule_New(SHC_rv, NULL, NULL);

    return (PyObject *) SHTPy_rv;
// splicer end class.ExClass1.method.get_addr
}

static char PP_exclass1_hasAddr__doc__[] =
"documentation"
;

static PyObject *
PP_exclass1_hasAddr(
  PP_ExClass1 *self,
  PyObject *args,
  PyObject *kwds)
{
// bool hasAddr(bool in +intent(in)+value)
// splicer begin class.ExClass1.method.has_addr
    PyObject * SHPy_in;
    const char *SHT_kwlist[] = {
        "in",
        NULL };

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "O!:hasAddr",
        const_cast<char **>(SHT_kwlist), &PyBool_Type, &SHPy_in))
        return NULL;

    // pre_call
    bool in = PyObject_IsTrue(SHPy_in);

    bool SHC_rv = self->obj->hasAddr(in);

    // post_call
    PyObject * SHTPy_rv = PyBool_FromLong(SHC_rv);

    return (PyObject *) SHTPy_rv;
// splicer end class.ExClass1.method.has_addr
}

static char PP_exclass1_SplicerSpecial__doc__[] =
"documentation"
;

static PyObject *
PP_exclass1_SplicerSpecial(
  PP_ExClass1 *self,
  PyObject *SHROUD_UNUSED(args),
  PyObject *SHROUD_UNUSED(kwds))
{
// void SplicerSpecial()
// splicer begin class.ExClass1.method.splicer_special
    self->obj->SplicerSpecial();
    Py_RETURN_NONE;
// splicer end class.ExClass1.method.splicer_special
}

static int
PP_ExClass1_tp_init(
  PP_ExClass1 *self,
  PyObject *args,
  PyObject *kwds)
{
// splicer begin class.ExClass1.method.ctor
    Py_ssize_t SHT_nargs = 0;
    if (args != NULL) SHT_nargs += PyTuple_Size(args);
    if (kwds != NULL) SHT_nargs += PyDict_Size(args);
    int rv;
    if (SHT_nargs == 0) {
        rv = PP_ExClass1_tp_init_0(self, args, kwds);
        if (!PyErr_Occurred()) {
            return rv;
        } else if (! PyErr_ExceptionMatches(PyExc_TypeError)) {
            return rv;
        }
        PyErr_Clear();
    }
    if (SHT_nargs == 1) {
        rv = PP_ExClass1_tp_init_1(self, args, kwds);
        if (!PyErr_Occurred()) {
            return rv;
        } else if (! PyErr_ExceptionMatches(PyExc_TypeError)) {
            return rv;
        }
        PyErr_Clear();
    }
    PyErr_SetString(PyExc_TypeError, "wrong arguments multi-dispatch");
    return -1;
// splicer end class.ExClass1.method.ctor
}

static char PP_exclass1_getValue__doc__[] =
"documentation"
;

static PyObject *
PP_exclass1_getValue(
  PP_ExClass1 *self,
  PyObject *args,
  PyObject *kwds)
{
// splicer begin class.ExClass1.method.get_value
    Py_ssize_t SHT_nargs = 0;
    if (args != NULL) SHT_nargs += PyTuple_Size(args);
    if (kwds != NULL) SHT_nargs += PyDict_Size(args);
    PyObject *rvobj;
    if (SHT_nargs == 1) {
        rvobj = PP_exclass1_getValue_from_int(self, args, kwds);
        if (!PyErr_Occurred()) {
            return rvobj;
        } else if (! PyErr_ExceptionMatches(PyExc_TypeError)) {
            return rvobj;
        }
        PyErr_Clear();
    }
    if (SHT_nargs == 1) {
        rvobj = PP_exclass1_getValue_1(self, args, kwds);
        if (!PyErr_Occurred()) {
            return rvobj;
        } else if (! PyErr_ExceptionMatches(PyExc_TypeError)) {
            return rvobj;
        }
        PyErr_Clear();
    }
    PyErr_SetString(PyExc_TypeError, "wrong arguments multi-dispatch");
    return NULL;
// splicer end class.ExClass1.method.get_value
}
// splicer begin class.ExClass1.impl.after_methods
// splicer end class.ExClass1.impl.after_methods
static PyMethodDef PP_ExClass1_methods[] = {
    {"incrementCount", (PyCFunction)PP_exclass1_incrementCount,
        METH_VARARGS|METH_KEYWORDS, PP_exclass1_incrementCount__doc__},
    {"getNameErrorPattern",
        (PyCFunction)PP_exclass1_getNameErrorPattern, METH_NOARGS,
        PP_exclass1_getNameErrorPattern__doc__},
    {"GetNameLength", (PyCFunction)PP_exclass1_GetNameLength,
        METH_NOARGS, PP_exclass1_GetNameLength__doc__},
    {"getNameErrorCheck", (PyCFunction)PP_exclass1_getNameErrorCheck,
        METH_NOARGS, PP_exclass1_getNameErrorCheck__doc__},
    {"getNameArg", (PyCFunction)PP_exclass1_getNameArg, METH_NOARGS,
        PP_exclass1_getNameArg__doc__},
    {"getRoot", (PyCFunction)PP_exclass1_getRoot, METH_NOARGS,
        PP_exclass1_getRoot__doc__},
    {"getAddr", (PyCFunction)PP_exclass1_getAddr, METH_NOARGS,
        PP_exclass1_getAddr__doc__},
    {"hasAddr", (PyCFunction)PP_exclass1_hasAddr,
        METH_VARARGS|METH_KEYWORDS, PP_exclass1_hasAddr__doc__},
    {"SplicerSpecial", (PyCFunction)PP_exclass1_SplicerSpecial,
        METH_NOARGS, PP_exclass1_SplicerSpecial__doc__},
    {"getValue", (PyCFunction)PP_exclass1_getValue,
        METH_VARARGS|METH_KEYWORDS, PP_exclass1_getValue__doc__},
    // splicer begin class.ExClass1.PyMethodDef
    // splicer end class.ExClass1.PyMethodDef
    {NULL,   (PyCFunction)NULL, 0, NULL}            /* sentinel */
};

static char ExClass1__doc__[] =
"virtual class"
;

/* static */
PyTypeObject PP_ExClass1_Type = {
    PyVarObject_HEAD_INIT(NULL, 0)
    "userlibrary.ExClass1",                       /* tp_name */
    sizeof(PP_ExClass1),         /* tp_basicsize */
    0,                              /* tp_itemsize */
    /* Methods to implement standard operations */
    (destructor)0,                 /* tp_dealloc */
    (printfunc)0,                   /* tp_print */
    (getattrfunc)0,                 /* tp_getattr */
    (setattrfunc)0,                 /* tp_setattr */
#if PY_MAJOR_VERSION >= 3
    0,                               /* tp_reserved */
#else
    (cmpfunc)0,                     /* tp_compare */
#endif
    (reprfunc)PP_ExClass1_tp_repr,                    /* tp_repr */
    /* Method suites for standard classes */
    0,                              /* tp_as_number */
    0,                              /* tp_as_sequence */
    0,                              /* tp_as_mapping */
    /* More standard operations (here for binary compatibility) */
    (hashfunc)0,                    /* tp_hash */
    (ternaryfunc)0,                 /* tp_call */
    (reprfunc)0,                    /* tp_str */
    (getattrofunc)0,                /* tp_getattro */
    (setattrofunc)0,                /* tp_setattro */
    /* Functions to access object as input/output buffer */
    0,                              /* tp_as_buffer */
    /* Flags to define presence of optional/expanded features */
    Py_TPFLAGS_DEFAULT,             /* tp_flags */
    ExClass1__doc__,         /* tp_doc */
    /* Assigned meaning in release 2.0 */
    /* call function for all accessible objects */
    (traverseproc)0,                /* tp_traverse */
    /* delete references to contained objects */
    (inquiry)0,                     /* tp_clear */
    /* Assigned meaning in release 2.1 */
    /* rich comparisons */
    (richcmpfunc)PP_ExClass1_tp_richcompare,                 /* tp_richcompare */
    /* weak reference enabler */
    0,                              /* tp_weaklistoffset */
    /* Added in release 2.2 */
    /* Iterators */
    (getiterfunc)0,                 /* tp_iter */
    (iternextfunc)0,                /* tp_iternext */
    /* Attribute descriptor and subclassing stuff */
    PP_ExClass1_methods,                             /* tp_methods */
    0,                              /* tp_members */
    0,                             /* tp_getset */
    0,                              /* tp_base */
    0,                              /* tp_dict */
    (descrgetfunc)0,                /* tp_descr_get */
    (descrsetfunc)0,                /* tp_descr_set */
    0,                              /* tp_dictoffset */
    (initproc)PP_ExClass1_tp_init,                   /* tp_init */
    (allocfunc)0,                  /* tp_alloc */
    (newfunc)0,                    /* tp_new */
    (freefunc)0,                   /* tp_free */
    (inquiry)0,                     /* tp_is_gc */
    0,                              /* tp_bases */
    0,                              /* tp_mro */
    0,                              /* tp_cache */
    0,                              /* tp_subclasses */
    0,                              /* tp_weaklist */
    (destructor)PP_ExClass1_tp_del,                 /* tp_del */
    0,                              /* tp_version_tag */
#if PY_MAJOR_VERSION >= 3
    (destructor)0,                  /* tp_finalize */
#endif
};