// pytemplatesmodule.hpp
// This file is generated by Shroud 0.11.0. Do not edit.
// Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
#ifndef PYTEMPLATESMODULE_HPP
#define PYTEMPLATESMODULE_HPP
#include <Python.h>
#include <vector>
#include "implworker1.hpp"
#include "implworker2.hpp"
#include "templates.hpp"
// splicer begin header.include
// splicer end header.include

// utility functions
extern void PY_SHROUD_release_memory(int icontext, void *ptr);
extern void *PY_SHROUD_fetch_context(int icontext);
extern void PY_SHROUD_capsule_destructor(PyObject *cap);

// ------------------------------
extern PyTypeObject PY_vector_int_Type;
// splicer begin namespace.std.class.vector.C_declaration
// splicer end namespace.std.class.vector.C_declaration

typedef struct {
PyObject_HEAD
    std::vector<int> * obj;
    int idtor;
    // splicer begin namespace.std.class.vector.C_object
    // splicer end namespace.std.class.vector.C_object
} PY_vector_int;

extern const char *PY_vector_int_capsule_name;
PyObject *PP_vector_int_to_Object(std::vector<int> *addr);
int PP_vector_int_from_Object(PyObject *obj, void **addr);

// ------------------------------
extern PyTypeObject PY_vector_double_Type;
// splicer begin namespace.std.class.vector.C_declaration
// splicer end namespace.std.class.vector.C_declaration

typedef struct {
PyObject_HEAD
    std::vector<double> * obj;
    int idtor;
    // splicer begin namespace.std.class.vector.C_object
    // splicer end namespace.std.class.vector.C_object
} PY_vector_double;

extern const char *PY_vector_double_capsule_name;
PyObject *PP_vector_double_to_Object(std::vector<double> *addr);
int PP_vector_double_from_Object(PyObject *obj, void **addr);

// ------------------------------
extern PyTypeObject PY_ImplWorker1_Type;
// splicer begin namespace.internal.class.ImplWorker1.C_declaration
// splicer end namespace.internal.class.ImplWorker1.C_declaration

typedef struct {
PyObject_HEAD
    internal::ImplWorker1 * obj;
    int idtor;
    // splicer begin namespace.internal.class.ImplWorker1.C_object
    // splicer end namespace.internal.class.ImplWorker1.C_object
} PY_ImplWorker1;

extern const char *PY_ImplWorker1_capsule_name;
PyObject *PP_ImplWorker1_to_Object(internal::ImplWorker1 *addr);
int PP_ImplWorker1_from_Object(PyObject *obj, void **addr);

// ------------------------------
extern PyTypeObject PY_ImplWorker2_Type;
// splicer begin namespace.internal.class.ImplWorker2.C_declaration
// splicer end namespace.internal.class.ImplWorker2.C_declaration

typedef struct {
PyObject_HEAD
    internal::ImplWorker2 * obj;
    int idtor;
    // splicer begin namespace.internal.class.ImplWorker2.C_object
    // splicer end namespace.internal.class.ImplWorker2.C_object
} PY_ImplWorker2;

extern const char *PY_ImplWorker2_capsule_name;
PyObject *PP_ImplWorker2_to_Object(internal::ImplWorker2 *addr);
int PP_ImplWorker2_from_Object(PyObject *obj, void **addr);

// ------------------------------
extern PyTypeObject PY_Worker_Type;
// splicer begin class.Worker.C_declaration
// splicer end class.Worker.C_declaration

typedef struct {
PyObject_HEAD
    Worker * obj;
    int idtor;
    // splicer begin class.Worker.C_object
    // splicer end class.Worker.C_object
} PY_Worker;

extern const char *PY_Worker_capsule_name;
PyObject *PP_Worker_to_Object(Worker *addr);
int PP_Worker_from_Object(PyObject *obj, void **addr);

// ------------------------------
extern PyTypeObject PY_user_int_Type;
// splicer begin class.user.C_declaration
// splicer end class.user.C_declaration

typedef struct {
PyObject_HEAD
    user<int> * obj;
    int idtor;
    // splicer begin class.user.C_object
    // splicer end class.user.C_object
} PY_user_int;

extern const char *PY_user_int_capsule_name;
PyObject *PP_user_int_to_Object(user<int> *addr);
int PP_user_int_from_Object(PyObject *obj, void **addr);
// ------------------------------

// splicer begin header.C_declaration
// splicer end header.C_declaration

extern PyObject *PY_error_obj;

#if PY_MAJOR_VERSION >= 3
extern "C" PyMODINIT_FUNC PyInit_templates(void);
#else
extern "C" PyMODINIT_FUNC inittemplates(void);
#endif

#endif  /* PYTEMPLATESMODULE_HPP */
