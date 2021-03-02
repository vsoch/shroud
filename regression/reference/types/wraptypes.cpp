// wraptypes.cpp
// This file is generated by Shroud nowrite-version. Do not edit.
// Copyright (c) 2017-2021, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
#include "wraptypes.h"

// cxx_header
#include "types.hpp"
// shroud
#include "typestypes.h"
#include <cstdlib>

// splicer begin CXX_definitions
// splicer end CXX_definitions

extern "C" {

// splicer begin C_definitions
// splicer end C_definitions

// ----------------------------------------
// Function:  short short_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  short arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
short TYP_short_func(short arg1)
{
    // splicer begin function.short_func
    short SHC_rv = short_func(arg1);
    return SHC_rv;
    // splicer end function.short_func
}

// ----------------------------------------
// Function:  int int_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  int arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
int TYP_int_func(int arg1)
{
    // splicer begin function.int_func
    int SHC_rv = int_func(arg1);
    return SHC_rv;
    // splicer end function.int_func
}

// ----------------------------------------
// Function:  long long_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  long arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
long TYP_long_func(long arg1)
{
    // splicer begin function.long_func
    long SHC_rv = long_func(arg1);
    return SHC_rv;
    // splicer end function.long_func
}

// ----------------------------------------
// Function:  long long long_long_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  long long arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
long long TYP_long_long_func(long long arg1)
{
    // splicer begin function.long_long_func
    long long SHC_rv = long_long_func(arg1);
    return SHC_rv;
    // splicer end function.long_long_func
}

// ----------------------------------------
// Function:  short int short_int_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  short int arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
short TYP_short_int_func(short arg1)
{
    // splicer begin function.short_int_func
    short SHC_rv = short_int_func(arg1);
    return SHC_rv;
    // splicer end function.short_int_func
}

// ----------------------------------------
// Function:  long int long_int_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  long int arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
long TYP_long_int_func(long arg1)
{
    // splicer begin function.long_int_func
    long SHC_rv = long_int_func(arg1);
    return SHC_rv;
    // splicer end function.long_int_func
}

// ----------------------------------------
// Function:  long long int long_long_int_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  long long int arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
long long TYP_long_long_int_func(long long arg1)
{
    // splicer begin function.long_long_int_func
    long long SHC_rv = long_long_int_func(arg1);
    return SHC_rv;
    // splicer end function.long_long_int_func
}

// ----------------------------------------
// Function:  unsigned unsigned_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  unsigned arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
unsigned int TYP_unsigned_func(unsigned int arg1)
{
    // splicer begin function.unsigned_func
    unsigned int SHC_rv = unsigned_func(arg1);
    return SHC_rv;
    // splicer end function.unsigned_func
}

// ----------------------------------------
// Function:  unsigned short ushort_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  unsigned short arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
unsigned short TYP_ushort_func(unsigned short arg1)
{
    // splicer begin function.ushort_func
    unsigned short SHC_rv = ushort_func(arg1);
    return SHC_rv;
    // splicer end function.ushort_func
}

// ----------------------------------------
// Function:  unsigned int uint_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  unsigned int arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
unsigned int TYP_uint_func(unsigned int arg1)
{
    // splicer begin function.uint_func
    unsigned int SHC_rv = uint_func(arg1);
    return SHC_rv;
    // splicer end function.uint_func
}

// ----------------------------------------
// Function:  unsigned long ulong_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  unsigned long arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
unsigned long TYP_ulong_func(unsigned long arg1)
{
    // splicer begin function.ulong_func
    unsigned long SHC_rv = ulong_func(arg1);
    return SHC_rv;
    // splicer end function.ulong_func
}

// ----------------------------------------
// Function:  unsigned long long ulong_long_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  unsigned long long arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
unsigned long long TYP_ulong_long_func(unsigned long long arg1)
{
    // splicer begin function.ulong_long_func
    unsigned long long SHC_rv = ulong_long_func(arg1);
    return SHC_rv;
    // splicer end function.ulong_long_func
}

// ----------------------------------------
// Function:  unsigned long int ulong_int_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  unsigned long int arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
unsigned long TYP_ulong_int_func(unsigned long arg1)
{
    // splicer begin function.ulong_int_func
    unsigned long SHC_rv = ulong_int_func(arg1);
    return SHC_rv;
    // splicer end function.ulong_int_func
}

// ----------------------------------------
// Function:  int8_t int8_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  int8_t arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
int8_t TYP_int8_func(int8_t arg1)
{
    // splicer begin function.int8_func
    int8_t SHC_rv = int8_func(arg1);
    return SHC_rv;
    // splicer end function.int8_func
}

// ----------------------------------------
// Function:  int16_t int16_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  int16_t arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
int16_t TYP_int16_func(int16_t arg1)
{
    // splicer begin function.int16_func
    int16_t SHC_rv = int16_func(arg1);
    return SHC_rv;
    // splicer end function.int16_func
}

// ----------------------------------------
// Function:  int32_t int32_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  int32_t arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
int32_t TYP_int32_func(int32_t arg1)
{
    // splicer begin function.int32_func
    int32_t SHC_rv = int32_func(arg1);
    return SHC_rv;
    // splicer end function.int32_func
}

// ----------------------------------------
// Function:  int64_t int64_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  int64_t arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
int64_t TYP_int64_func(int64_t arg1)
{
    // splicer begin function.int64_func
    int64_t SHC_rv = int64_func(arg1);
    return SHC_rv;
    // splicer end function.int64_func
}

// ----------------------------------------
// Function:  uint8_t uint8_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  uint8_t arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
uint8_t TYP_uint8_func(uint8_t arg1)
{
    // splicer begin function.uint8_func
    uint8_t SHC_rv = uint8_func(arg1);
    return SHC_rv;
    // splicer end function.uint8_func
}

// ----------------------------------------
// Function:  uint16_t uint16_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  uint16_t arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
uint16_t TYP_uint16_func(uint16_t arg1)
{
    // splicer begin function.uint16_func
    uint16_t SHC_rv = uint16_func(arg1);
    return SHC_rv;
    // splicer end function.uint16_func
}

// ----------------------------------------
// Function:  uint32_t uint32_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  uint32_t arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
uint32_t TYP_uint32_func(uint32_t arg1)
{
    // splicer begin function.uint32_func
    uint32_t SHC_rv = uint32_func(arg1);
    return SHC_rv;
    // splicer end function.uint32_func
}

// ----------------------------------------
// Function:  uint64_t uint64_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  uint64_t arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
uint64_t TYP_uint64_func(uint64_t arg1)
{
    // splicer begin function.uint64_func
    uint64_t SHC_rv = uint64_func(arg1);
    return SHC_rv;
    // splicer end function.uint64_func
}

// ----------------------------------------
// Function:  size_t size_func
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  size_t arg1 +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
size_t TYP_size_func(size_t arg1)
{
    // splicer begin function.size_func
    size_t SHC_rv = size_func(arg1);
    return SHC_rv;
    // splicer end function.size_func
}

// ----------------------------------------
// Function:  bool bool_func
// Requested: c_bool_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  bool arg +intent(in)+value
// Requested: c_bool_scalar_in
// Match:     c_default
//    metaattrs:  +intent(in)
bool TYP_bool_func(bool arg)
{
    // splicer begin function.bool_func
    bool SHC_rv = bool_func(arg);
    return SHC_rv;
    // splicer end function.bool_func
}

/**
 * \brief Function which returns bool with other intent(out) arguments
 *
 * Python treats bool differently since Py_BuildValue does not support
 * bool until Python 3.3.
 * Must create a PyObject with PyBool_FromLong then include that object
 * in call to Py_BuildValue as type 'O'.  But since two return values
 * are being created, function return and argument flag, rename first
 * local C variable to avoid duplicate names in wrapper.
 */
// ----------------------------------------
// Function:  bool returnBoolAndOthers
// Requested: c_bool_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  int * flag +intent(out)
// Requested: c_native_*_out
// Match:     c_default
//    metaattrs:  +intent(out)
bool TYP_return_bool_and_others(int * flag)
{
    // splicer begin function.return_bool_and_others
    bool SHC_rv = returnBoolAndOthers(flag);
    return SHC_rv;
    // splicer end function.return_bool_and_others
}

// Release library allocated memory.
void TYP_SHROUD_memory_destructor(TYP_SHROUD_capsule_data *cap)
{
    cap->addr = nullptr;
    cap->idtor = 0;  // avoid deleting again
}

}  // extern "C"
