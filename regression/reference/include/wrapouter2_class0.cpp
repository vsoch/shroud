// wrapouter2_class0.cpp
// This is generated code, do not edit
// Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
#include "wrapouter2_class0.h"
#include "classA.hpp"
#include "classAb.hpp"


extern "C" {


void LIB_outer2_class0_method(LIB_outer2_class0 * self)
{
    outer2::class0 *SH_this = static_cast<outer2::class0 *>(self->addr);
    SH_this->method();
    return;
}

}  // extern "C"
