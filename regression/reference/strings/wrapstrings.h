// wrapstrings.h
// This is generated code, do not edit
// Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
/**
 * \file wrapstrings.h
 * \brief Shroud generated wrapper for strings library
 */
// For C users and C++ implementation

#ifndef WRAPSTRINGS_H
#define WRAPSTRINGS_H

#include "typesstrings.h"

// splicer begin CXX_declarations
// splicer end CXX_declarations

#ifdef __cplusplus
extern "C" {
#endif

// splicer begin C_declarations
// splicer end C_declarations

void STR_pass_char(char status);

char STR_return_char();

void STR_return_char_bufferify(char * SHF_rv, int NSHF_rv);

void STR_pass_char_ptr(char * dest, const char * src);

void STR_pass_char_ptr_bufferify(char * dest, int Ndest,
    const char * src);

void STR_pass_char_ptr_in_out(char * s);

void STR_pass_char_ptr_in_out_bufferify(char * s, int Ls, int Ns);

const char * STR_get_char_ptr1();

void STR_get_char_ptr1_bufferify(STR_SHROUD_array *DSHF_rv);

const char * STR_get_char_ptr2();

void STR_get_char_ptr2_bufferify(char * SHF_rv, int NSHF_rv);

const char * STR_get_char_ptr3();

void STR_get_char_ptr3_bufferify(char * output, int Noutput);

void STR_get_const_string_result_bufferify(STR_SHROUD_array *DSHF_rv);

void STR_get_const_string_len_bufferify(char * SHF_rv, int NSHF_rv);

void STR_get_const_string_as_arg_bufferify(char * output, int Noutput);

void STR_get_const_string_alloc_bufferify(STR_SHROUD_array *DSHF_rv);

const char * STR_get_const_string_ref_pure();

void STR_get_const_string_ref_pure_bufferify(STR_SHROUD_array *DSHF_rv);

const char * STR_get_const_string_ref_len();

void STR_get_const_string_ref_len_bufferify(char * SHF_rv, int NSHF_rv);

const char * STR_get_const_string_ref_as_arg();

void STR_get_const_string_ref_as_arg_bufferify(char * output,
    int Noutput);

const char * STR_get_const_string_ref_len_empty();

void STR_get_const_string_ref_len_empty_bufferify(char * SHF_rv,
    int NSHF_rv);

const char * STR_get_const_string_ref_alloc();

void STR_get_const_string_ref_alloc_bufferify(
    STR_SHROUD_array *DSHF_rv);

const char * STR_get_const_string_ptr_len();

void STR_get_const_string_ptr_len_bufferify(char * SHF_rv, int NSHF_rv);

const char * STR_get_const_string_ptr_alloc();

void STR_get_const_string_ptr_alloc_bufferify(
    STR_SHROUD_array *DSHF_rv);

const char * STR_get_const_string_ptr_owns_alloc();

void STR_get_const_string_ptr_owns_alloc_bufferify(
    STR_SHROUD_array *DSHF_rv);

const char * STR_get_const_string_ptr_owns_alloc_pattern();

void STR_get_const_string_ptr_owns_alloc_pattern_bufferify(
    STR_SHROUD_array *DSHF_rv);

void STR_accept_string_const_reference(const char * arg1);

void STR_accept_string_const_reference_bufferify(const char * arg1,
    int Larg1);

void STR_accept_string_reference_out(char * arg1);

void STR_accept_string_reference_out_bufferify(char * arg1, int Narg1);

void STR_accept_string_reference(char * arg1);

void STR_accept_string_reference_bufferify(char * arg1, int Larg1,
    int Narg1);

void STR_accept_string_pointer(char * arg1);

void STR_accept_string_pointer_bufferify(char * arg1, int Larg1,
    int Narg1);

void STR_explicit1(char * name);

void STR_explicit2(char * name);

void STR_explicit2_bufferify(char * name, int AAtrim);

void STR_creturn_char_bufferify(char * SHF_rv, int NSHF_rv);

void STR_cpass_char_ptr_bufferify(char * dest, int Ndest,
    const char * src);

#ifdef __cplusplus
}
#endif

#endif  // WRAPSTRINGS_H
