// wrapUser2.h
// This is generated code, do not edit
// #######################################################################
// Copyright (c) 2017-2019, Lawrence Livermore National Security, LLC.
//
// Produced at the Lawrence Livermore National Laboratory
//
// LLNL-CODE-738041.
//
// All rights reserved.
//
// This file is part of Shroud.
//
// For details about use and distribution, please read LICENSE.
//
// #######################################################################
/**
 * \file wrapUser2.h
 * \brief Shroud generated wrapper for User2 class
 */
// For C users and C++ implementation

#ifndef WRAPUSER2_H
#define WRAPUSER2_H
#ifdef USE_USER2

#include "typespreprocess.h"

// splicer begin class.User2.CXX_declarations
// splicer end class.User2.CXX_declarations

#ifdef __cplusplus
extern "C" {
#endif

// splicer begin class.User2.C_declarations
// splicer end class.User2.C_declarations

#ifdef USE_CLASS3_A
void PRE_User2_exfunc_0(PRE_user2 * self);
#endif

#ifndef USE_CLASS3_A
void PRE_User2_exfunc_1(PRE_user2 * self, int flag);
#endif

#ifdef __cplusplus
}
#endif
#endif  // ifdef USE_USER2

#endif  // WRAPUSER2_H
