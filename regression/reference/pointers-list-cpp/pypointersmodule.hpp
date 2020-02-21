// pypointersmodule.hpp
// This file is generated by Shroud 0.11.0. Do not edit.
// Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
#ifndef PYPOINTERSMODULE_HPP
#define PYPOINTERSMODULE_HPP
#include <Python.h>
#include "pointers.hpp"
// splicer begin header.include
// splicer end header.include

// splicer begin header.C_declaration
// splicer end header.C_declaration

extern PyObject *PY_error_obj;

#if PY_MAJOR_VERSION >= 3
extern "C" PyMODINIT_FUNC PyInit_pointers(void);
#else
extern "C" PyMODINIT_FUNC initpointers(void);
#endif

#endif  /* PYPOINTERSMODULE_HPP */
