// pyCstruct_numtype.c
// This file is generated by Shroud 0.11.0. Do not edit.
// Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
#include "pystructmodule.h"
// splicer begin class.Cstruct_num.impl.include
// splicer end class.Cstruct_num.impl.include

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

// Keep track of the PyObject and pointer to the data it contains.
typedef struct {
    PyObject *obj;
    void *data;   // points into obj.
} SHROUD_converter_value;
// splicer begin class.Cstruct_num.impl.C_definition
// splicer end class.Cstruct_num.impl.C_definition
// splicer begin class.Cstruct_num.impl.additional_methods
// splicer end class.Cstruct_num.impl.additional_methods
static void
PY_Cstruct_num_tp_del (PY_Cstruct_num *self)
{
// splicer begin class.Cstruct_num.type.del
    PY_SHROUD_release_memory(self->idtor, self->obj);
    self->obj = NULL;
    // Python objects for members.
    Py_XDECREF(self->ivalue_obj);
    Py_XDECREF(self->dvalue_obj);
// splicer end class.Cstruct_num.type.del
}

static int
PY_Cstruct_num_tp_init(
  PY_Cstruct_num *self,
  PyObject *args,
  PyObject *kwds)
{
// Cstruct_num(int nitems +intent(in)+optional(0), int * ivalue +intent(in)+optional(0), double * dvalue +intent(in)+optional(0)) +name(Cstruct_num_ctor)
// splicer begin class.Cstruct_num.method.cstruct_num_ctor
    int nitems;
    SHROUD_converter_value SHPy_ivalue;
#error missing PY_get_converter for type int
    SHROUD_converter_value SHPy_dvalue;
#error missing PY_get_converter for type double
    char *SHT_kwlist[] = {
        "nitems",
        "ivalue",
        "dvalue",
        NULL };

    nitems = 0;
    SHPy_ivalue.obj = NULL;
    SHPy_ivalue.data = NULL;
    SHPy_dvalue.obj = NULL;
    SHPy_dvalue.data = NULL;
    if (!PyArg_ParseTupleAndKeywords(args, kwds,
        "|iO&O&:Cstruct_num_ctor", SHT_kwlist, &nitems, NULL,
        &SHPy_ivalue, NULL, &SHPy_dvalue))
        return -1;

    self->obj = malloc(sizeof(Cstruct_num));
    if (self->obj == NULL) {
        PyErr_NoMemory();
        return -1;
    }
    self->idtor = 3;
    // initialize fields
    Cstruct_num *SH_obj = self->obj;
    SH_obj->nitems = nitems;
    SH_obj->ivalue = (int *) SHPy_ivalue.data;
    SH_obj->dvalue = (double *) SHPy_dvalue.data;
    self->ivalue_obj = SHPy_ivalue.obj;  // steal reference
    self->dvalue_obj = SHPy_dvalue.obj;  // steal reference
    return 0;
// splicer end class.Cstruct_num.method.cstruct_num_ctor
}
// splicer begin class.Cstruct_num.impl.after_methods
// splicer end class.Cstruct_num.impl.after_methods

static PyObject *PY_Cstruct_num_nitems_getter(PY_Cstruct_num *self,
    void *SHROUD_UNUSED(closure))
{
    PyObject * rv = PyInt_FromLong(self->obj->nitems);
    return rv;
}

static int PY_Cstruct_num_nitems_setter(PY_Cstruct_num *self, PyObject *value,
    void *SHROUD_UNUSED(closure))
{
    int rv = PyInt_AsLong(value);
    if (PyErr_Occurred()) {
        return -1;
    }
    self->obj->nitems = rv;
    return 0;
}

static PyObject *PY_Cstruct_num_ivalue_getter(PY_Cstruct_num *self,
    void *SHROUD_UNUSED(closure))
{
    if (self->obj->ivalue == NULL) {
        Py_RETURN_NONE;
    }
    if (self->ivalue_obj != NULL) {
        Py_INCREF(self->ivalue_obj);
        return self->ivalue_obj;
    }
    return NULL;
}

static int PY_Cstruct_num_ivalue_setter(PY_Cstruct_num *self, PyObject *value,
    void *SHROUD_UNUSED(closure))
{
#error missing PY_get_converter for type int
    return 0;
}

static PyObject *PY_Cstruct_num_dvalue_getter(PY_Cstruct_num *self,
    void *SHROUD_UNUSED(closure))
{
    if (self->obj->dvalue == NULL) {
        Py_RETURN_NONE;
    }
    if (self->dvalue_obj != NULL) {
        Py_INCREF(self->dvalue_obj);
        return self->dvalue_obj;
    }
    return NULL;
}

static int PY_Cstruct_num_dvalue_setter(PY_Cstruct_num *self, PyObject *value,
    void *SHROUD_UNUSED(closure))
{
#error missing PY_get_converter for type double
    return 0;
}

static PyGetSetDef PY_Cstruct_num_getset[] = {
    {(char *)"nitems", (getter)PY_Cstruct_num_nitems_getter,
        (setter)PY_Cstruct_num_nitems_setter, NULL, NULL},
    {(char *)"ivalue", (getter)PY_Cstruct_num_ivalue_getter,
        (setter)PY_Cstruct_num_ivalue_setter, NULL, NULL},
    {(char *)"dvalue", (getter)PY_Cstruct_num_dvalue_getter,
        (setter)PY_Cstruct_num_dvalue_setter, NULL, NULL},
    // splicer begin class.Cstruct_num.PyGetSetDef
    // splicer end class.Cstruct_num.PyGetSetDef
    {NULL}            /* sentinel */
};
static PyMethodDef PY_Cstruct_num_methods[] = {
    // splicer begin class.Cstruct_num.PyMethodDef
    // splicer end class.Cstruct_num.PyMethodDef
    {NULL,   (PyCFunction)NULL, 0, NULL}            /* sentinel */
};

static char Cstruct_num__doc__[] =
"virtual class"
;

/* static */
PyTypeObject PY_Cstruct_num_Type = {
    PyVarObject_HEAD_INIT(NULL, 0)
    "cstruct.Cstruct_num",                       /* tp_name */
    sizeof(PY_Cstruct_num),         /* tp_basicsize */
    0,                              /* tp_itemsize */
    /* Methods to implement standard operations */
    (destructor)NULL,                 /* tp_dealloc */
    (printfunc)NULL,                   /* tp_print */
    (getattrfunc)NULL,                 /* tp_getattr */
    (setattrfunc)NULL,                 /* tp_setattr */
#if PY_MAJOR_VERSION >= 3
    NULL,                               /* tp_reserved */
#else
    (cmpfunc)NULL,                     /* tp_compare */
#endif
    (reprfunc)NULL,                    /* tp_repr */
    /* Method suites for standard classes */
    NULL,                              /* tp_as_number */
    NULL,                              /* tp_as_sequence */
    NULL,                              /* tp_as_mapping */
    /* More standard operations (here for binary compatibility) */
    (hashfunc)NULL,                    /* tp_hash */
    (ternaryfunc)NULL,                 /* tp_call */
    (reprfunc)NULL,                    /* tp_str */
    (getattrofunc)NULL,                /* tp_getattro */
    (setattrofunc)NULL,                /* tp_setattro */
    /* Functions to access object as input/output buffer */
    NULL,                              /* tp_as_buffer */
    /* Flags to define presence of optional/expanded features */
    Py_TPFLAGS_DEFAULT,             /* tp_flags */
    Cstruct_num__doc__,         /* tp_doc */
    /* Assigned meaning in release 2.0 */
    /* call function for all accessible objects */
    (traverseproc)NULL,                /* tp_traverse */
    /* delete references to contained objects */
    (inquiry)NULL,                     /* tp_clear */
    /* Assigned meaning in release 2.1 */
    /* rich comparisons */
    (richcmpfunc)NULL,                 /* tp_richcompare */
    /* weak reference enabler */
    0,                              /* tp_weaklistoffset */
    /* Added in release 2.2 */
    /* Iterators */
    (getiterfunc)NULL,                 /* tp_iter */
    (iternextfunc)NULL,                /* tp_iternext */
    /* Attribute descriptor and subclassing stuff */
    PY_Cstruct_num_methods,                             /* tp_methods */
    NULL,                              /* tp_members */
    PY_Cstruct_num_getset,                             /* tp_getset */
    NULL,                              /* tp_base */
    NULL,                              /* tp_dict */
    (descrgetfunc)NULL,                /* tp_descr_get */
    (descrsetfunc)NULL,                /* tp_descr_set */
    0,                              /* tp_dictoffset */
    (initproc)PY_Cstruct_num_tp_init,                   /* tp_init */
    (allocfunc)NULL,                  /* tp_alloc */
    (newfunc)NULL,                    /* tp_new */
    (freefunc)NULL,                   /* tp_free */
    (inquiry)NULL,                     /* tp_is_gc */
    NULL,                              /* tp_bases */
    NULL,                              /* tp_mro */
    NULL,                              /* tp_cache */
    NULL,                              /* tp_subclasses */
    NULL,                              /* tp_weaklist */
    (destructor)PY_Cstruct_num_tp_del,                 /* tp_del */
    0,                              /* tp_version_tag */
#if PY_MAJOR_VERSION >= 3
    (destructor)NULL,                  /* tp_finalize */
#endif
};
