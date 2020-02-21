// typeslibrary.h
// This file is generated by Shroud 0.11.0. Do not edit.
// Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
// For C users and C++ implementation

#ifndef TYPESLIBRARY_H
#define TYPESLIBRARY_H


#ifdef __cplusplus
extern "C" {
#endif

struct s_LIB_Class2 {
    void *addr;     /* address of C++ memory */
    int idtor;      /* index of destructor */
};
typedef struct s_LIB_Class2 LIB_Class2;

struct s_LIB_outer1_class0 {
    void *addr;     /* address of C++ memory */
    int idtor;      /* index of destructor */
};
typedef struct s_LIB_outer1_class0 LIB_outer1_class0;

struct s_LIB_outer2_class0 {
    void *addr;     /* address of C++ memory */
    int idtor;      /* index of destructor */
};
typedef struct s_LIB_outer2_class0 LIB_outer2_class0;

struct s_LIB_three_Class1 {
    void *addr;     /* address of C++ memory */
    int idtor;      /* index of destructor */
};
typedef struct s_LIB_three_Class1 LIB_three_Class1;

struct s_LIB_SHROUD_capsule_data {
    void *addr;     /* address of C++ memory */
    int idtor;      /* index of destructor */
};
typedef struct s_LIB_SHROUD_capsule_data LIB_SHROUD_capsule_data;

void LIB_SHROUD_memory_destructor(LIB_SHROUD_capsule_data *cap);

#ifdef __cplusplus
}
#endif

#endif  // TYPESLIBRARY_H
