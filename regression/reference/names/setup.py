# setup.py
# This file is generated by Shroud nowrite-version. Do not edit.
# Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
# other Shroud Project Developers.
# See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (BSD-3-Clause)
#
from setuptools import setup, Extension

module = Extension(
    'testnames',
    sources=[
         'pytestnames_ns0_innermodule.cpp',
         'pyns0_Namestype.cpp',
         'pytestnames_ns0module.cpp',
         'pytestnames_ns1module.cpp',
         'pytestnames_internalmodule.cpp',
         'pystd_vector_inttype.cpp',
         'pystd_vector_doubletype.cpp',
         'pystd_vector_instantiation5type.cpp',
         'pystd_vector_instantiation3type.cpp',
         'pytestnames_stdmodule.cpp',
         'pyNames2type.cpp',
         'pytwoTs_0type.cpp',
         'pytwoTs_instantiation4type.cpp',
         'pytestnamesmodule.cpp',
         'pytestnamesutil.cpp'
    ],
    language='c++',
    include_dirs = None,
#    libraries = ['tcl83'],
#    library_dirs = ['/usr/local/lib'],      
#    extra_compile_args = [ '-O0', '-g' ],
#    extra_link_args =
)

setup(
    name='testnames',
    ext_modules = [module],
)
