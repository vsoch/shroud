// wraptr29113.cpp
// This file is generated by Shroud 0.11.0. Do not edit.
// Copyright (c) 2017-2021, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
#include "wraptr29113.h"
#include <cstddef>
#include <cstdlib>
#include <cstring>
#include <string>
#include "tr29113.hpp"
#include "typestr29113.h"

// splicer begin CXX_definitions
// splicer end CXX_definitions

extern "C" {


// helper ShroudStrToArray
// Save str metadata into array to allow Fortran to access values.
// CHARACTER(len=elem_size) src
static void ShroudStrToArray(TR2_SHROUD_array *array, const std::string * src, int idtor)
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
// splicer begin C_definitions
#include "ISO_Fortran_binding.h"


void TR2_get_const_string_ptr_alloc_tr_bufferify(CFI_cdesc_t * rv)
{
    const std::string * SHCXX_rv = getConstStringPtrAlloc();

    CFI_allocate(rv, nullptr, nullptr, SHCXX_rv->length());
    std::memcpy(rv->base_addr, SHCXX_rv->data(), rv->elem_len);
}

void TR2_get_const_string_ptr_alloc_tr_bufferify_zerolength(CFI_cdesc_t * rv)
{
    const std::string SHCXX_rv;

    CFI_allocate(rv, nullptr, nullptr, SHCXX_rv.length());
    std::memcpy(rv->base_addr, SHCXX_rv.data(), rv->elem_len);
}
// splicer end C_definitions

// ----------------------------------------
// Function:  const std::string * getConstStringPtrAlloc +deref(allocatable)
// Requested: c_string_*_result
// Match:     c_string_result
const char * TR2_get_const_string_ptr_alloc(void)
{
    // splicer begin function.get_const_string_ptr_alloc
    const std::string * SHCXX_rv = getConstStringPtrAlloc();
    const char * SHC_rv = SHCXX_rv->c_str();
    return SHC_rv;
    // splicer end function.get_const_string_ptr_alloc
}

// ----------------------------------------
// Function:  void getConstStringPtrAlloc
// Requested: c_void_scalar_result_buf
// Match:     c_default
// ----------------------------------------
// Argument:  const std::string * SHF_rv +context(DSHF_rv)+deref(allocatable)+intent(out)
// Requested: c_string_*_result_buf_allocatable
// Match:     c_string_result_buf_allocatable
void TR2_get_const_string_ptr_alloc_bufferify(TR2_SHROUD_array *DSHF_rv)
{
    // splicer begin function.get_const_string_ptr_alloc_bufferify
    const std::string * SHCXX_rv = getConstStringPtrAlloc();
    ShroudStrToArray(DSHF_rv, SHCXX_rv, 0);
    // splicer end function.get_const_string_ptr_alloc_bufferify
}

// Release library allocated memory.
void TR2_SHROUD_memory_destructor(TR2_SHROUD_capsule_data *cap)
{
    cap->addr = nullptr;
    cap->idtor = 0;  // avoid deleting again
}

}  // extern "C"
