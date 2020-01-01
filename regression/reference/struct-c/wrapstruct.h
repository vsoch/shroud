// wrapstruct.h
// This is generated code, do not edit
// Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
/**
 * \file wrapstruct.h
 * \brief Shroud generated wrapper for struct library
 */
// For C users and C implementation

#ifndef WRAPSTRUCT_H
#define WRAPSTRUCT_H

#include "typesstruct.h"
#ifndef __cplusplus
#include "struct.h"
#endif

// splicer begin C_declarations
// splicer end C_declarations

int STR_pass_struct2_bufferify(Cstruct1 * s1, char * outbuf,
    int Noutbuf);

Cstruct1 * STR_return_struct_ptr2_bufferify(int i, double d,
    char * outbuf, int Noutbuf);

#endif  // WRAPSTRUCT_H
