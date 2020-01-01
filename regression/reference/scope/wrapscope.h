// wrapscope.h
// This is generated code, do not edit
// Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
/**
 * \file wrapscope.h
 * \brief Shroud generated wrapper for scope library
 */
// For C users and C++ implementation

#ifndef WRAPSCOPE_H
#define WRAPSCOPE_H

#include "typesscope.h"

// splicer begin CXX_declarations
// splicer end CXX_declarations

#ifdef __cplusplus
extern "C" {
#endif

//  Color
enum SCO_Color {
    SCO_RED = 10,
    SCO_BLUE,
    SCO_WHITE
};

//  ns3::Color
enum SCO_ns3_Color {
    SCO_ns3_RED = 70,
    SCO_ns3_BLUE,
    SCO_ns3_WHITE
};

//  ColorEnum
enum SCO_ColorEnum {
    SCO_ColorEnum_RED = 60,
    SCO_ColorEnum_BLUE,
    SCO_ColorEnum_WHITE
};

// splicer begin C_declarations
// splicer end C_declarations

#ifdef __cplusplus
}
#endif

#endif  // WRAPSCOPE_H
