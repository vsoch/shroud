// wrapstruct.cpp
// This file is generated by Shroud 0.11.0. Do not edit.
// Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
#include "wrapstruct.h"
#include <cstdlib>
#include <cstring>
#include "struct.h"
#include "typesstruct.h"

// splicer begin CXX_definitions
// splicer end CXX_definitions

extern "C" {


// helper ShroudStrBlankFill
// blank fill dest starting at trailing NULL.
static void ShroudStrBlankFill(char *dest, int ndest)
{
   int nm = std::strlen(dest);
   if(ndest > nm) std::memset(dest+nm,' ',ndest-nm);
}
// splicer begin C_definitions
// splicer end C_definitions

// ----------------------------------------
// Function:  int passStructByValue
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  Cstruct1 arg +intent(in)+value
// Requested: c_struct_scalar_in
// Match:     c_struct
// start STR_pass_struct_by_value
int STR_pass_struct_by_value(STR_cstruct1 arg)
{
    // splicer begin function.pass_struct_by_value
    Cstruct1 * SHCXX_arg = static_cast<Cstruct1 *>(static_cast<void *>(
        &arg));
    int SHC_rv = passStructByValue(*SHCXX_arg);
    return SHC_rv;
    // splicer end function.pass_struct_by_value
}
// end STR_pass_struct_by_value

// ----------------------------------------
// Function:  int passStruct1
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  const Cstruct1 * arg +intent(in)
// Requested: c_struct_*_in
// Match:     c_struct
// start STR_pass_struct1
int STR_pass_struct1(const STR_cstruct1 * arg)
{
    // splicer begin function.pass_struct1
    const Cstruct1 * SHCXX_arg = static_cast<const Cstruct1 *>
        (static_cast<const void *>(arg));
    int SHC_rv = passStruct1(SHCXX_arg);
    return SHC_rv;
    // splicer end function.pass_struct1
}
// end STR_pass_struct1

/**
 * Pass name argument which will build a bufferify function.
 */
// ----------------------------------------
// Function:  int passStruct2
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  const Cstruct1 * s1 +intent(in)
// Requested: c_struct_*_in
// Match:     c_struct
// ----------------------------------------
// Argument:  char * outbuf +charlen(LENOUTBUF)+intent(out)
// Requested: c_char_*_out
// Match:     c_default
int STR_pass_struct2(const STR_cstruct1 * s1, char * outbuf)
{
    // splicer begin function.pass_struct2
    const Cstruct1 * SHCXX_s1 = static_cast<const Cstruct1 *>
        (static_cast<const void *>(s1));
    int SHC_rv = passStruct2(SHCXX_s1, outbuf);
    return SHC_rv;
    // splicer end function.pass_struct2
}

/**
 * Pass name argument which will build a bufferify function.
 */
// ----------------------------------------
// Function:  int passStruct2
// Requested: c_native_scalar_result_buf
// Match:     c_default
// ----------------------------------------
// Argument:  const Cstruct1 * s1 +intent(in)
// Requested: c_struct_*_in_buf
// Match:     c_struct
// ----------------------------------------
// Argument:  char * outbuf +charlen(LENOUTBUF)+intent(out)+len(Noutbuf)
// Exact:     c_char_*_out_buf
int STR_pass_struct2_bufferify(const STR_cstruct1 * s1, char * outbuf,
    int Noutbuf)
{
    // splicer begin function.pass_struct2_bufferify
    const Cstruct1 * SHCXX_s1 = static_cast<const Cstruct1 *>
        (static_cast<const void *>(s1));
    int SHC_rv = passStruct2(SHCXX_s1, outbuf);
    ShroudStrBlankFill(outbuf, Noutbuf);
    return SHC_rv;
    // splicer end function.pass_struct2_bufferify
}

// ----------------------------------------
// Function:  int acceptStructInPtr
// Requested: c_native_scalar_result
// Match:     c_default
// ----------------------------------------
// Argument:  Cstruct1 * arg +intent(in)
// Requested: c_struct_*_in
// Match:     c_struct
int STR_accept_struct_in_ptr(STR_cstruct1 * arg)
{
    // splicer begin function.accept_struct_in_ptr
    Cstruct1 * SHCXX_arg = static_cast<Cstruct1 *>(static_cast<void *>(
        arg));
    int SHC_rv = acceptStructInPtr(SHCXX_arg);
    return SHC_rv;
    // splicer end function.accept_struct_in_ptr
}

/**
 * Pass name argument which will build a bufferify function.
 */
// ----------------------------------------
// Function:  void acceptStructOutPtr
// Requested: c
// Match:     c_default
// ----------------------------------------
// Argument:  Cstruct1 * arg +intent(out)
// Requested: c_struct_*_out
// Match:     c_struct
// ----------------------------------------
// Argument:  int i +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
// ----------------------------------------
// Argument:  double d +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
void STR_accept_struct_out_ptr(STR_cstruct1 * arg, int i, double d)
{
    // splicer begin function.accept_struct_out_ptr
    Cstruct1 * SHCXX_arg = static_cast<Cstruct1 *>(static_cast<void *>(
        arg));
    acceptStructOutPtr(SHCXX_arg, i, d);
    // splicer end function.accept_struct_out_ptr
}

// ----------------------------------------
// Function:  void acceptStructInOutPtr
// Requested: c
// Match:     c_default
// ----------------------------------------
// Argument:  Cstruct1 * arg +intent(inout)
// Requested: c_struct_*_inout
// Match:     c_struct
void STR_accept_struct_in_out_ptr(STR_cstruct1 * arg)
{
    // splicer begin function.accept_struct_in_out_ptr
    Cstruct1 * SHCXX_arg = static_cast<Cstruct1 *>(static_cast<void *>(
        arg));
    acceptStructInOutPtr(SHCXX_arg);
    // splicer end function.accept_struct_in_out_ptr
}

// ----------------------------------------
// Function:  Cstruct1 returnStructByValue
// Requested: c_struct_scalar_result
// Match:     c_struct_result
// ----------------------------------------
// Argument:  int i +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
// ----------------------------------------
// Argument:  double d +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
STR_cstruct1 STR_return_struct_by_value(int i, double d)
{
    // splicer begin function.return_struct_by_value
    Cstruct1 SHCXX_rv = returnStructByValue(i, d);
    STR_cstruct1 * SHC_rv = static_cast<STR_cstruct1 *>(
        static_cast<void *>(&SHCXX_rv));
    return *SHC_rv;
    // splicer end function.return_struct_by_value
}

// ----------------------------------------
// Function:  const Cstruct1 returnConstStructByValue
// Requested: c_struct_scalar_result
// Match:     c_struct_result
// ----------------------------------------
// Argument:  int i +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
// ----------------------------------------
// Argument:  double d +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
const STR_cstruct1 STR_return_const_struct_by_value(int i, double d)
{
    // splicer begin function.return_const_struct_by_value
    const Cstruct1 SHCXX_rv = returnConstStructByValue(i, d);
    const STR_cstruct1 * SHC_rv = static_cast<const STR_cstruct1 *>(
        static_cast<const void *>(&SHCXX_rv));
    return *SHC_rv;
    // splicer end function.return_const_struct_by_value
}

/**
 * \brief Return a pointer to a struct
 *
 * Does not generate a bufferify C wrapper.
 */
// ----------------------------------------
// Function:  Cstruct1 * returnStructPtr1 +deref(pointer)
// Requested: c_struct_*_result
// Match:     c_struct_result
// ----------------------------------------
// Argument:  int i +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
// ----------------------------------------
// Argument:  double d +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
STR_cstruct1 * STR_return_struct_ptr1(int i, double d)
{
    // splicer begin function.return_struct_ptr1
    Cstruct1 * SHCXX_rv = returnStructPtr1(i, d);
    STR_cstruct1 * SHC_rv = static_cast<STR_cstruct1 *>(
        static_cast<void *>(SHCXX_rv));
    return SHC_rv;
    // splicer end function.return_struct_ptr1
}

/**
 * \brief Return a pointer to a struct
 *
 * Generates a bufferify C wrapper function.
 */
// ----------------------------------------
// Function:  Cstruct1 * returnStructPtr2 +deref(pointer)
// Requested: c_struct_*_result
// Match:     c_struct_result
// ----------------------------------------
// Argument:  int i +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
// ----------------------------------------
// Argument:  double d +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
// ----------------------------------------
// Argument:  char * outbuf +charlen(LENOUTBUF)+intent(out)
// Requested: c_char_*_out
// Match:     c_default
STR_cstruct1 * STR_return_struct_ptr2(int i, double d, char * outbuf)
{
    // splicer begin function.return_struct_ptr2
    Cstruct1 * SHCXX_rv = returnStructPtr2(i, d, outbuf);
    STR_cstruct1 * SHC_rv = static_cast<STR_cstruct1 *>(
        static_cast<void *>(SHCXX_rv));
    return SHC_rv;
    // splicer end function.return_struct_ptr2
}

/**
 * \brief Return a pointer to a struct
 *
 * Generates a bufferify C wrapper function.
 */
// ----------------------------------------
// Function:  Cstruct1 * returnStructPtr2 +deref(pointer)
// Requested: c_struct_*_result_buf
// Match:     c_struct_result
// ----------------------------------------
// Argument:  int i +intent(in)+value
// Requested: c_native_scalar_in_buf
// Match:     c_default
// ----------------------------------------
// Argument:  double d +intent(in)+value
// Requested: c_native_scalar_in_buf
// Match:     c_default
// ----------------------------------------
// Argument:  char * outbuf +charlen(LENOUTBUF)+intent(out)+len(Noutbuf)
// Exact:     c_char_*_out_buf
STR_cstruct1 * STR_return_struct_ptr2_bufferify(int i, double d,
    char * outbuf, int Noutbuf)
{
    // splicer begin function.return_struct_ptr2_bufferify
    Cstruct1 * SHCXX_rv = returnStructPtr2(i, d, outbuf);
    ShroudStrBlankFill(outbuf, Noutbuf);
    STR_cstruct1 * SHC_rv = static_cast<STR_cstruct1 *>(
        static_cast<void *>(SHCXX_rv));
    return SHC_rv;
    // splicer end function.return_struct_ptr2_bufferify
}

// ----------------------------------------
// Function:  Cstruct_list * get_global_struct_list +deref(pointer)
// Requested: c_struct_*_result
// Match:     c_struct_result
STR_cstruct_list * STR_get_global_struct_list(void)
{
    // splicer begin function.get_global_struct_list
    Cstruct_list * SHCXX_rv = get_global_struct_list();
    STR_cstruct_list * SHC_rv = static_cast<STR_cstruct_list *>(
        static_cast<void *>(SHCXX_rv));
    return SHC_rv;
    // splicer end function.get_global_struct_list
}

// Release library allocated memory.
void STR_SHROUD_memory_destructor(STR_SHROUD_capsule_data *cap)
{
    cap->addr = nullptr;
    cap->idtor = 0;  // avoid deleting again
}

}  // extern "C"
