// typesstatement.h
// This is generated code, do not edit
// Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
// For C users and C++ implementation

#ifndef TYPESSTATEMENT_H
#define TYPESSTATEMENT_H


#ifdef __cplusplus
extern "C" {
#endif

struct s_STMT_SHROUD_capsule_data {
    void *addr;     /* address of C++ memory */
    int idtor;      /* index of destructor */
};
typedef struct s_STMT_SHROUD_capsule_data STMT_SHROUD_capsule_data;

void STMT_SHROUD_memory_destructor(STMT_SHROUD_capsule_data *cap);

#ifdef __cplusplus
}
#endif

#endif  // TYPESSTATEMENT_H
