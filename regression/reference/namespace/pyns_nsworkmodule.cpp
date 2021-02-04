// pyns_nsworkmodule.cpp
// This file is generated by Shroud nowrite-version. Do not edit.
// Copyright (c) 2017-2021, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
#include "pynsmodule.hpp"

// splicer begin namespace.nswork.include
// splicer end namespace.nswork.include

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

// splicer begin namespace.nswork.C_definition
// splicer end namespace.nswork.C_definition
// splicer begin namespace.nswork.additional_functions
// splicer end namespace.nswork.additional_functions
static PyMethodDef PY_methods[] = {
{nullptr,   (PyCFunction)nullptr, 0, nullptr}            /* sentinel */
};

#if PY_MAJOR_VERSION >= 3
static char PY__doc__[] =
"XXX submodule doc"  //"library documentation"
;

struct module_state {
    PyObject *error;
};

static struct PyModuleDef moduledef = {
    PyModuleDef_HEAD_INIT,
    "ns.nswork", /* m_name */
    PY__doc__, /* m_doc */
    sizeof(struct module_state), /* m_size */
    PY_methods, /* m_methods */
    nullptr, /* m_reload */
//    ns_traverse, /* m_traverse */
//    ns_clear, /* m_clear */
    nullptr, /* m_traverse */
    nullptr, /* m_clear */
    nullptr  /* m_free */
};
#endif
#define RETVAL nullptr

PyObject *PY_init_ns_nswork(void)
{
    PyObject *m;
#if PY_MAJOR_VERSION >= 3
    m = PyModule_Create(&moduledef);
#else
    m = Py_InitModule3((char *) "nswork", PY_methods, nullptr);
#endif
    if (m == nullptr)
        return nullptr;


    // ClassWork
    PY_ClassWork_Type.tp_new   = PyType_GenericNew;
    PY_ClassWork_Type.tp_alloc = PyType_GenericAlloc;
    if (PyType_Ready(&PY_ClassWork_Type) < 0)
        return RETVAL;
    Py_INCREF(&PY_ClassWork_Type);
    PyModule_AddObject(m, "ClassWork", (PyObject *)&PY_ClassWork_Type);

    return m;
}

