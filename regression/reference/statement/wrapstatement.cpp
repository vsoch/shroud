// wrapstatement.cpp
// This file is generated by Shroud 0.11.0. Do not edit.
// Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
#include "wrapstatement.h"
#include <cstdlib>
#include <cstring>
#include <string>
#include "statement.hpp"
#include "typesstatement.h"

// splicer begin CXX_definitions
// splicer end CXX_definitions

extern "C" {


// helper ShroudStrCopy
// Copy src into dest, blank fill to ndest characters
// Truncate if dest is too short.
// dest will not be NULL terminated.
static void ShroudStrCopy(char *dest, int ndest, const char *src, int nsrc)
{
   if (src == NULL) {
     std::memset(dest,' ',ndest); // convert NULL pointer to blank filled string
   } else {
     if (nsrc < 0) nsrc = std::strlen(src);
     int nm = nsrc < ndest ? nsrc : ndest;
     std::memcpy(dest,src,nm);
     if(ndest > nm) std::memset(dest+nm,' ',ndest-nm); // blank fill
   }
}
// splicer begin C_definitions
// splicer end C_definitions

/**
 * \brief helper function for Fortran to get length of name.
 *
 */
// ----------------------------------------
// Function:  int GetNameLength +pure
// Requested: c_native_scalar_result
// Match:     c_default
int STMT_get_name_length(void)
{
    // splicer begin function.get_name_length
    return getNameErrorPattern().length();
    // splicer end function.get_name_length
}

// ----------------------------------------
// Function:  const string & getNameErrorPattern +deref(result-as-arg)+len(get_name_length())
// Requested: c_string_&_result
// Match:     c_string_result
const char * STMT_get_name_error_pattern(void)
{
    // splicer begin function.get_name_error_pattern
    const std::string & SHCXX_rv = getNameErrorPattern();
    // C_error_pattern
    if (! isNameValid(SHCXX_rv)) {
        return NULL;
    }

    const char * SHC_rv = SHCXX_rv.c_str();
    return SHC_rv;
    // splicer end function.get_name_error_pattern
}

// ----------------------------------------
// Function:  void getNameErrorPattern +len(get_name_length())
// Requested: c_unknown_scalar_result_buf
// Match:     c_default
// ----------------------------------------
// Argument:  string & SHF_rv +intent(out)+len(NSHF_rv)
// Requested: c_string_&_result_buf
// Match:     c_string_result_buf
void STMT_get_name_error_pattern_bufferify(char * SHF_rv, int NSHF_rv)
{
    // splicer begin function.get_name_error_pattern_bufferify
    const std::string & SHCXX_rv = getNameErrorPattern();
    if (SHCXX_rv.empty()) {
        ShroudStrCopy(SHF_rv, NSHF_rv, nullptr, 0);
    } else {
        ShroudStrCopy(SHF_rv, NSHF_rv, SHCXX_rv.data(),
            SHCXX_rv.size());
    }
    // splicer end function.get_name_error_pattern_bufferify
}

// Release library allocated memory.
void STMT_SHROUD_memory_destructor(STMT_SHROUD_capsule_data *cap)
{
    cap->addr = nullptr;
    cap->idtor = 0;  // avoid deleting again
}

}  // extern "C"
