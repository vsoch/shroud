// wrapClass2.h
// This is generated code, do not edit
/**
 * \file wrapClass2.h
 * \brief Shroud generated wrapper for Class2 class
 */
// For C users and C++ implementation

#ifndef WRAPCLASS2_H
#define WRAPCLASS2_H

#include "mpi.h"

// splicer begin class.Class2.CXX_declarations
// splicer end class.Class2.CXX_declarations

#ifdef __cplusplus
extern "C" {
#endif

// declaration of wrapped types
struct s_DEF_class1;
typedef struct s_DEF_class1 DEF_class1;
struct s_DEF_class2;
typedef struct s_DEF_class2 DEF_class2;

// splicer begin class.Class2.C_declarations
// splicer end class.Class2.C_declarations

void DEF_class2_method1(DEF_class2 * self, MPI_Fint comm);

void DEF_class2_method2(DEF_class2 * self, DEF_class1 * c2);

#ifdef __cplusplus
}
#endif

#endif  // WRAPCLASS2_H
