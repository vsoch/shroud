// wrapmemdoc.cpp
// This file is generated by Shroud nowrite-version. Do not edit.
// Copyright (c) 2017-2021, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
#include "wrapmemdoc.h"

// typemap
#include <string>
// shroud
#include "typesmemdoc.h"
#include <cstdlib>
#include <cstddef>
#include <cstring>

// splicer begin CXX_definitions
// splicer end CXX_definitions

extern "C" {


// start helper ShroudStrToArray
// helper ShroudStrToArray
// Save str metadata into array to allow Fortran to access values.
// CHARACTER(len=elem_size) src
static void ShroudStrToArray(STR_SHROUD_array *array, const std::string * src, int idtor)
{
    array->cxx.addr = const_cast<std::string *>(src);
    array->cxx.idtor = idtor;
    if (src->empty()) {
        array->addr.ccharp = NULL;
        array->elem_len = 0;
    } else {
        array->addr.ccharp = src->data();
        array->elem_len = src->length();
    }
    array->size = 1;
    array->rank = 0;  // scalar
}
// end helper ShroudStrToArray
// splicer begin C_definitions
// splicer end C_definitions

// ----------------------------------------
// Function:  const std::string * getConstStringPtrAlloc +deref(allocatable)+owner(library)
// Attrs:     +deref(allocatable)+intent(result)
// Exact:     c_string_*_result
// start STR_get_const_string_ptr_alloc
const char * STR_get_const_string_ptr_alloc(void)
{
    // splicer begin function.get_const_string_ptr_alloc
    const std::string * SHCXX_rv = getConstStringPtrAlloc();
    const char * SHC_rv = SHCXX_rv->c_str();
    return SHC_rv;
    // splicer end function.get_const_string_ptr_alloc
}
// end STR_get_const_string_ptr_alloc

// ----------------------------------------
// Function:  void getConstStringPtrAlloc
// Requested: c_void_scalar_result_buf
// Match:     c_default
// ----------------------------------------
// Argument:  const std::string * SHF_rv +context(DSHF_rv)+deref(allocatable)+owner(library)
// Attrs:     +deref(allocatable)+intent(out)+is_result
// Exact:     c_string_*_result_buf_allocatable
// start STR_get_const_string_ptr_alloc_bufferify
void STR_get_const_string_ptr_alloc_bufferify(STR_SHROUD_array *DSHF_rv)
{
    // splicer begin function.get_const_string_ptr_alloc_bufferify
    const std::string * SHCXX_rv = getConstStringPtrAlloc();
    ShroudStrToArray(DSHF_rv, SHCXX_rv, 0);
    // splicer end function.get_const_string_ptr_alloc_bufferify
}
// end STR_get_const_string_ptr_alloc_bufferify

// start release allocated memory
// Release library allocated memory.
void STR_SHROUD_memory_destructor(STR_SHROUD_capsule_data *cap)
{
    cap->addr = nullptr;
    cap->idtor = 0;  // avoid deleting again
}
// end release allocated memory

}  // extern "C"
