// wrapstruct.c
// This file is generated by Shroud nowrite-version. Do not edit.
// Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
#include "wrapstruct.h"
#include <stdlib.h>
#include <string.h>
#include "struct.h"
#include "typesstruct.h"


// helper ShroudStrBlankFill
// blank fill dest starting at trailing NULL.
static void ShroudStrBlankFill(char *dest, int ndest)
{
   int nm = strlen(dest);
   if(ndest > nm) memset(dest+nm,' ',ndest-nm);
}
// splicer begin C_definitions
// splicer end C_definitions

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
int STR_pass_struct2_bufferify(const Cstruct1 * s1, char * outbuf,
    int Noutbuf)
{
    // splicer begin function.pass_struct2_bufferify
    int SHC_rv = passStruct2(s1, outbuf);
    ShroudStrBlankFill(outbuf, Noutbuf);
    return SHC_rv;
    // splicer end function.pass_struct2_bufferify
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
Cstruct1 * STR_return_struct_ptr2_bufferify(int i, double d,
    char * outbuf, int Noutbuf)
{
    // splicer begin function.return_struct_ptr2_bufferify
    Cstruct1 * SHC_rv = returnStructPtr2(i, d, outbuf);
    ShroudStrBlankFill(outbuf, Noutbuf);
    return SHC_rv;
    // splicer end function.return_struct_ptr2_bufferify
}

// ----------------------------------------
// Function:  Cstruct_as_class * Create_Cstruct_as_class
// Requested: c_shadow_*_result
// Match:     c_shadow_result
STR_Cstruct_as_class * STR_create__cstruct_as_class(
    STR_Cstruct_as_class * SHadow_rv)
{
    // splicer begin function.create__cstruct_as_class
    Cstruct_as_class * SHC_rv = Create_Cstruct_as_class();
    SHadow_rv->addr = SHC_rv;
    SHadow_rv->idtor = 0;
    return SHadow_rv;
    // splicer end function.create__cstruct_as_class
}

// ----------------------------------------
// Function:  Cstruct_as_class * Create_Cstruct_as_class_args
// Requested: c_shadow_*_result
// Match:     c_shadow_result
// ----------------------------------------
// Argument:  int x +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
// ----------------------------------------
// Argument:  int y +intent(in)+value
// Requested: c_native_scalar_in
// Match:     c_default
STR_Cstruct_as_class * STR_create__cstruct_as_class_args(int x, int y,
    STR_Cstruct_as_class * SHadow_rv)
{
    // splicer begin function.create__cstruct_as_class_args
    Cstruct_as_class * SHC_rv = Create_Cstruct_as_class_args(x, y);
    SHadow_rv->addr = SHC_rv;
    SHadow_rv->idtor = 0;
    return SHadow_rv;
    // splicer end function.create__cstruct_as_class_args
}

// start release allocated memory
// Release library allocated memory.
void STR_SHROUD_memory_destructor(STR_SHROUD_capsule_data *cap)
{
    cap->addr = NULL;
    cap->idtor = 0;  // avoid deleting again
}
// end release allocated memory
