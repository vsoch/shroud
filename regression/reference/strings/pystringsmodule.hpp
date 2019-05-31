// pystringsmodule.hpp
// This is generated code, do not edit
// #######################################################################
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
#ifndef PYSTRINGSMODULE_HPP
#define PYSTRINGSMODULE_HPP
#include <Python.h>
// splicer begin header.include
// splicer end header.include

// splicer begin header.C_declaration
// splicer end header.C_declaration

// helper functions


extern PyObject *PY_error_obj;

#if PY_MAJOR_VERSION >= 3
extern "C" PyMODINIT_FUNC PyInit_strings(void);
#else
extern "C" PyMODINIT_FUNC initstrings(void);
#endif

#endif  /* PYSTRINGSMODULE_HPP */