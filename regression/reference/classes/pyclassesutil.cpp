// pyclassesutil.cpp
// This file is generated by Shroud nowrite-version. Do not edit.
// Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
#include "pyclassesmodule.hpp"

#ifdef __cplusplus
#define SHROUD_UNUSED(param)
#else
#define SHROUD_UNUSED(param) param
#endif

#if PY_MAJOR_VERSION >= 3
#define PyInt_AsLong PyLong_AsLong
#define PyInt_FromLong PyLong_FromLong
#define PyInt_FromSize_t PyLong_FromSize_t
#define PyString_FromString PyUnicode_FromString
#define PyString_FromStringAndSize PyUnicode_FromStringAndSize
#endif

const char *PY_Class1_capsule_name = "Class1";
const char *PY_Class2_capsule_name = "Class2";
const char *PY_Singleton_capsule_name = "Singleton";
const char *PY_Shape_capsule_name = "Shape";
const char *PY_Circle_capsule_name = "Circle";


// Wrap pointer to struct/class.
PyObject *PP_Class1_to_Object_idtor(classes::Class1 *addr, int idtor)
{
    // splicer begin class.Class1.utility.to_object
    PY_Class1 *obj = PyObject_New(PY_Class1, &PY_Class1_Type);
    if (obj == nullptr)
        return nullptr;
    obj->obj = addr;
    obj->idtor = idtor;
    return reinterpret_cast<PyObject *>(obj);
    // splicer end class.Class1.utility.to_object
}

// converter which may be used with PyBuild.
PyObject *PP_Class1_to_Object(classes::Class1 *addr)
{
    // splicer begin class.Class1.utility.to_object
    PyObject *voidobj;
    PyObject *args;
    PyObject *rv;

    voidobj = PyCapsule_New(addr, PY_Class1_capsule_name, nullptr);
    args = PyTuple_New(1);
    PyTuple_SET_ITEM(args, 0, voidobj);
    rv = PyObject_Call((PyObject *) &PY_Class1_Type, args, nullptr);
    Py_DECREF(args);
    return rv;
    // splicer end class.Class1.utility.to_object
}

// converter which may be used with PyArg_Parse.
int PP_Class1_from_Object(PyObject *obj, void **addr)
{
    // splicer begin class.Class1.utility.from_object
    if (obj->ob_type != &PY_Class1_Type) {
        // raise exception
        return 0;
    }
    PY_Class1 * self = (PY_Class1 *) obj;
    *addr = self->obj;
    return 1;
    // splicer end class.Class1.utility.from_object
}

// Wrap pointer to struct/class.
PyObject *PP_Class2_to_Object_idtor(classes::Class2 *addr, int idtor)
{
    // splicer begin class.Class2.utility.to_object
    PY_Class2 *obj = PyObject_New(PY_Class2, &PY_Class2_Type);
    if (obj == nullptr)
        return nullptr;
    obj->obj = addr;
    obj->idtor = idtor;
    return reinterpret_cast<PyObject *>(obj);
    // splicer end class.Class2.utility.to_object
}

// converter which may be used with PyBuild.
PyObject *PP_Class2_to_Object(classes::Class2 *addr)
{
    // splicer begin class.Class2.utility.to_object
    PyObject *voidobj;
    PyObject *args;
    PyObject *rv;

    voidobj = PyCapsule_New(addr, PY_Class2_capsule_name, nullptr);
    args = PyTuple_New(1);
    PyTuple_SET_ITEM(args, 0, voidobj);
    rv = PyObject_Call((PyObject *) &PY_Class2_Type, args, nullptr);
    Py_DECREF(args);
    return rv;
    // splicer end class.Class2.utility.to_object
}

// converter which may be used with PyArg_Parse.
int PP_Class2_from_Object(PyObject *obj, void **addr)
{
    // splicer begin class.Class2.utility.from_object
    if (obj->ob_type != &PY_Class2_Type) {
        // raise exception
        return 0;
    }
    PY_Class2 * self = (PY_Class2 *) obj;
    *addr = self->obj;
    return 1;
    // splicer end class.Class2.utility.from_object
}

// Wrap pointer to struct/class.
PyObject *PP_Singleton_to_Object_idtor(classes::Singleton *addr,
    int idtor)
{
    // splicer begin class.Singleton.utility.to_object
    PY_Singleton *obj = PyObject_New(PY_Singleton, &PY_Singleton_Type);
    if (obj == nullptr)
        return nullptr;
    obj->obj = addr;
    obj->idtor = idtor;
    return reinterpret_cast<PyObject *>(obj);
    // splicer end class.Singleton.utility.to_object
}

// converter which may be used with PyBuild.
PyObject *PP_Singleton_to_Object(classes::Singleton *addr)
{
    // splicer begin class.Singleton.utility.to_object
    PyObject *voidobj;
    PyObject *args;
    PyObject *rv;

    voidobj = PyCapsule_New(addr, PY_Singleton_capsule_name, nullptr);
    args = PyTuple_New(1);
    PyTuple_SET_ITEM(args, 0, voidobj);
    rv = PyObject_Call((PyObject *) &PY_Singleton_Type, args, nullptr);
    Py_DECREF(args);
    return rv;
    // splicer end class.Singleton.utility.to_object
}

// converter which may be used with PyArg_Parse.
int PP_Singleton_from_Object(PyObject *obj, void **addr)
{
    // splicer begin class.Singleton.utility.from_object
    if (obj->ob_type != &PY_Singleton_Type) {
        // raise exception
        return 0;
    }
    PY_Singleton * self = (PY_Singleton *) obj;
    *addr = self->obj;
    return 1;
    // splicer end class.Singleton.utility.from_object
}

// Wrap pointer to struct/class.
PyObject *PP_Shape_to_Object_idtor(classes::Shape *addr, int idtor)
{
    // splicer begin class.Shape.utility.to_object
    PY_Shape *obj = PyObject_New(PY_Shape, &PY_Shape_Type);
    if (obj == nullptr)
        return nullptr;
    obj->obj = addr;
    obj->idtor = idtor;
    return reinterpret_cast<PyObject *>(obj);
    // splicer end class.Shape.utility.to_object
}

// converter which may be used with PyBuild.
PyObject *PP_Shape_to_Object(classes::Shape *addr)
{
    // splicer begin class.Shape.utility.to_object
    PyObject *voidobj;
    PyObject *args;
    PyObject *rv;

    voidobj = PyCapsule_New(addr, PY_Shape_capsule_name, nullptr);
    args = PyTuple_New(1);
    PyTuple_SET_ITEM(args, 0, voidobj);
    rv = PyObject_Call((PyObject *) &PY_Shape_Type, args, nullptr);
    Py_DECREF(args);
    return rv;
    // splicer end class.Shape.utility.to_object
}

// converter which may be used with PyArg_Parse.
int PP_Shape_from_Object(PyObject *obj, void **addr)
{
    // splicer begin class.Shape.utility.from_object
    if (obj->ob_type != &PY_Shape_Type) {
        // raise exception
        return 0;
    }
    PY_Shape * self = (PY_Shape *) obj;
    *addr = self->obj;
    return 1;
    // splicer end class.Shape.utility.from_object
}

// Wrap pointer to struct/class.
PyObject *PP_Circle_to_Object_idtor(classes::Circle *addr, int idtor)
{
    // splicer begin class.Circle.utility.to_object
    PY_Circle *obj = PyObject_New(PY_Circle, &PY_Circle_Type);
    if (obj == nullptr)
        return nullptr;
    obj->obj = addr;
    obj->idtor = idtor;
    return reinterpret_cast<PyObject *>(obj);
    // splicer end class.Circle.utility.to_object
}

// converter which may be used with PyBuild.
PyObject *PP_Circle_to_Object(classes::Circle *addr)
{
    // splicer begin class.Circle.utility.to_object
    PyObject *voidobj;
    PyObject *args;
    PyObject *rv;

    voidobj = PyCapsule_New(addr, PY_Circle_capsule_name, nullptr);
    args = PyTuple_New(1);
    PyTuple_SET_ITEM(args, 0, voidobj);
    rv = PyObject_Call((PyObject *) &PY_Circle_Type, args, nullptr);
    Py_DECREF(args);
    return rv;
    // splicer end class.Circle.utility.to_object
}

// converter which may be used with PyArg_Parse.
int PP_Circle_from_Object(PyObject *obj, void **addr)
{
    // splicer begin class.Circle.utility.from_object
    if (obj->ob_type != &PY_Circle_Type) {
        // raise exception
        return 0;
    }
    PY_Circle * self = (PY_Circle *) obj;
    *addr = self->obj;
    return 1;
    // splicer end class.Circle.utility.from_object
}

// ----------------------------------------
typedef struct {
    const char *name;
    void (*dtor)(void *ptr);
} PY_SHROUD_dtor_context;

// 0 - --none--
static void PY_SHROUD_capsule_destructor_0(void *ptr)
{
    // Do not release
}

// 1 - cxx classes::Class1 *
static void PY_SHROUD_capsule_destructor_1(void *ptr)
{
    classes::Class1 * cxx_ptr = static_cast<classes::Class1 *>(ptr);
    delete cxx_ptr;
}

// 2 - cxx classes::Shape *
static void PY_SHROUD_capsule_destructor_2(void *ptr)
{
    classes::Shape * cxx_ptr = static_cast<classes::Shape *>(ptr);
    delete cxx_ptr;
}

// 3 - cxx classes::Circle *
static void PY_SHROUD_capsule_destructor_3(void *ptr)
{
    classes::Circle * cxx_ptr = static_cast<classes::Circle *>(ptr);
    delete cxx_ptr;
}

// Code used to release arrays for NumPy objects
// via a Capsule base object with a destructor.
// Context strings
static PY_SHROUD_dtor_context PY_SHROUD_capsule_context[] = {
    {"--none--", PY_SHROUD_capsule_destructor_0},
    {"cxx classes::Class1 *", PY_SHROUD_capsule_destructor_1},
    {"cxx classes::Shape *", PY_SHROUD_capsule_destructor_2},
    {"cxx classes::Circle *", PY_SHROUD_capsule_destructor_3},
    {nullptr, nullptr},
};

// Release memory based on icontext.
void PY_SHROUD_release_memory(int icontext, void *ptr)
{
    PY_SHROUD_capsule_context[icontext].dtor(ptr);
}

//Fetch garbage collection context.
void *PY_SHROUD_fetch_context(int icontext)
{
    return PY_SHROUD_capsule_context + icontext;
}

// destructor function for PyCapsule
void PY_SHROUD_capsule_destructor(PyObject *cap)
{
    void *ptr = PyCapsule_GetPointer(cap, "PY_array_dtor");
    PY_SHROUD_dtor_context * context = static_cast<PY_SHROUD_dtor_context *>
        (PyCapsule_GetContext(cap));
    context->dtor(ptr);
}
