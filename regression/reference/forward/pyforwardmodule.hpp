// pyforwardmodule.hpp
// This is generated code, do not edit
// #######################################################################
// Copyright (c) 2018-2019, Lawrence Livermore National Security, LLC.
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
#ifndef PYFORWARDMODULE_HPP
#define PYFORWARDMODULE_HPP
#include <Python.h>
// splicer begin header.include
// splicer end header.include

// utility functions
typedef struct {
    const char *name;
    void (*dtor)(void *ptr);
} PY_SHROUD_dtor_context;

extern PY_SHROUD_dtor_context PY_SHROUD_capsule_context[];
extern void PY_SHROUD_capsule_destructor(PyObject *cap);
extern void PY_SHROUD_release_memory(int icontext, void *ptr);

// ------------------------------
namespace tutorial {
    class Class3;  // forward declare
}
extern PyTypeObject PY_Class3_Type;
// splicer begin class.Class3.C_declaration
// splicer end class.Class3.C_declaration

typedef struct {
PyObject_HEAD
    tutorial::Class3 * obj;
    int idtor;
    // splicer begin class.Class3.C_object
    // splicer end class.Class3.C_object
} PY_Class3;

extern const char *PY_Class3_capsule_name;
PyObject *PP_Class3_to_Object(tutorial::Class3 *addr);
int PP_Class3_from_Object(PyObject *obj, void **addr);

// ------------------------------
namespace tutorial {
    class Class2;  // forward declare
}
extern PyTypeObject PY_Class2_Type;
// splicer begin class.Class2.C_declaration
// splicer end class.Class2.C_declaration

typedef struct {
PyObject_HEAD
    tutorial::Class2 * obj;
    int idtor;
    // splicer begin class.Class2.C_object
    // splicer end class.Class2.C_object
} PY_Class2;

extern const char *PY_Class2_capsule_name;
PyObject *PP_Class2_to_Object(tutorial::Class2 *addr);
int PP_Class2_from_Object(PyObject *obj, void **addr);
// ------------------------------

// splicer begin header.C_declaration
// splicer end header.C_declaration

extern PyObject *PY_error_obj;

#if PY_MAJOR_VERSION >= 3
extern "C" PyMODINIT_FUNC PyInit_forward(void);
#else
extern "C" PyMODINIT_FUNC initforward(void);
#endif

#endif  /* PYFORWARDMODULE_HPP */
