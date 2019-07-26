// wrapmemdoc.h
// This is generated code, do not edit
// Copyright (c) 2017-2019, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
/**
 * \file wrapmemdoc.h
 * \brief Shroud generated wrapper for memdoc library
 */
// For C users and C++ implementation

#ifndef WRAPMEMDOC_H
#define WRAPMEMDOC_H

#include "typesmemdoc.h"

// splicer begin CXX_declarations
// splicer end CXX_declarations

#ifdef __cplusplus
extern "C" {
#endif

// splicer begin C_declarations
// splicer end C_declarations

const char * STR_get_const_string_ptr_alloc();

void STR_get_const_string_ptr_alloc_bufferify(
    STR_SHROUD_array *DSHF_rv);

#ifdef __cplusplus
}
#endif

#endif  // WRAPMEMDOC_H
