// wraplibrary_outer1.cpp
// This file is generated by Shroud 0.11.0. Do not edit.
// Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
#include "wraplibrary_outer1.h"
#include "outer1.hpp"


extern "C" {


void LIB_outer1_outer_func()
{
    outer1::outer_func();
    return;
}

}  // extern "C"
