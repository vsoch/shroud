// pypointersmodule.cpp
// This file is generated by Shroud 0.11.0. Do not edit.
// Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
#include "pypointersmodule.hpp"
#include <cstdlib>

// splicer begin include
// splicer end include

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

// helper from_PyObject_char
// Convert obj into an array of type char *
// Return -1 on error.
static int SHROUD_from_PyObject_char(PyObject *obj, const char *name,
    char * **pin, Py_ssize_t *psize)
{
    PyObject *seq = PySequence_Fast(obj, "holder");
    if (seq == NULL) {
        PyErr_Format(PyExc_TypeError, "argument '%s' must be iterable",
            name);
        return -1;
    }
    Py_ssize_t size = PySequence_Fast_GET_SIZE(seq);
    char * *in = static_cast<char * *>
        (std::malloc(size * sizeof(char *)));
    for (Py_ssize_t i = 0; i < size; i++) {
        PyObject *item = PySequence_Fast_GET_ITEM(seq, i);
        in[i] = PyString_AsString(item);
        if (PyErr_Occurred()) {
            std::free(in);
            Py_DECREF(seq);
            PyErr_Format(PyExc_ValueError,
                "argument '%s', index %d must be string", name,
                (int) i);
            return -1;
        }
    }
    Py_DECREF(seq);
    *pin = in;
    *psize = size;
    return 0;
}

// helper from_PyObject_double
// Convert obj into an array of type double
// Return -1 on error.
static int SHROUD_from_PyObject_double(PyObject *obj, const char *name,
    double **pin, Py_ssize_t *psize)
{
    PyObject *seq = PySequence_Fast(obj, "holder");
    if (seq == NULL) {
        PyErr_Format(PyExc_TypeError, "argument '%s' must be iterable",
            name);
        return -1;
    }
    Py_ssize_t size = PySequence_Fast_GET_SIZE(seq);
    double *in = static_cast<double *>
        (std::malloc(size * sizeof(double)));
    for (Py_ssize_t i = 0; i < size; i++) {
        PyObject *item = PySequence_Fast_GET_ITEM(seq, i);
        in[i] = PyFloat_AsDouble(item);
        if (PyErr_Occurred()) {
            std::free(in);
            Py_DECREF(seq);
            PyErr_Format(PyExc_ValueError,
                "argument '%s', index %d must be double", name,
                (int) i);
            return -1;
        }
    }
    Py_DECREF(seq);
    *pin = in;
    *psize = size;
    return 0;
}

// helper from_PyObject_int
// Convert obj into an array of type int
// Return -1 on error.
static int SHROUD_from_PyObject_int(PyObject *obj, const char *name,
    int **pin, Py_ssize_t *psize)
{
    PyObject *seq = PySequence_Fast(obj, "holder");
    if (seq == NULL) {
        PyErr_Format(PyExc_TypeError, "argument '%s' must be iterable",
            name);
        return -1;
    }
    Py_ssize_t size = PySequence_Fast_GET_SIZE(seq);
    int *in = static_cast<int *>(std::malloc(size * sizeof(int)));
    for (Py_ssize_t i = 0; i < size; i++) {
        PyObject *item = PySequence_Fast_GET_ITEM(seq, i);
        in[i] = PyInt_AsLong(item);
        if (PyErr_Occurred()) {
            std::free(in);
            Py_DECREF(seq);
            PyErr_Format(PyExc_ValueError,
                "argument '%s', index %d must be int", name, (int) i);
            return -1;
        }
    }
    Py_DECREF(seq);
    *pin = in;
    *psize = size;
    return 0;
}

// helper to_PyList_double
// Convert double pointer to PyList of PyObjects.
static PyObject *SHROUD_to_PyList_double(double *in, size_t size)
{
    PyObject *out = PyList_New(size);
    for (size_t i = 0; i < size; ++i) {
        PyList_SET_ITEM(out, i, PyFloat_FromDouble(in[i]));
    }
    return out;
}

// helper to_PyList_int
// Convert int pointer to PyList of PyObjects.
static PyObject *SHROUD_to_PyList_int(int *in, size_t size)
{
    PyObject *out = PyList_New(size);
    for (size_t i = 0; i < size; ++i) {
        PyList_SET_ITEM(out, i, PyInt_FromLong(in[i]));
    }
    return out;
}

// splicer begin C_definition
// splicer end C_definition
PyObject *PY_error_obj;
// splicer begin additional_functions
// splicer end additional_functions

// void intargs(const int argin +intent(in)+value, int * arginout +intent(inout), int * argout +intent(out))
// ----------------------------------------
// Argument:  argin
// Requested: py_native_in
// Match:     py_default
// ----------------------------------------
// Argument:  arginout
// Requested: py_native_*_inout
// Match:     py_default
// ----------------------------------------
// Argument:  argout
// Requested: py_native_*_out
// Match:     py_default
static char PY_intargs__doc__[] =
"documentation"
;

static PyObject *
PY_intargs(
  PyObject *SHROUD_UNUSED(self),
  PyObject *args,
  PyObject *kwds)
{
// splicer begin function.intargs
    int argin;
    int arginout;
    const char *SHT_kwlist[] = {
        "argin",
        "arginout",
        nullptr };
    PyObject *SHTPy_rv = nullptr;  // return value object

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "ii:intargs",
        const_cast<char **>(SHT_kwlist), &argin, &arginout))
        return nullptr;

    // pre_call
    int argout;  // intent(out)

    intargs(argin, &arginout, &argout);

    // post_call
    SHTPy_rv = Py_BuildValue("ii", arginout, argout);

    return SHTPy_rv;
// splicer end function.intargs
}

// void cos_doubles(double * in +dimension(:)+intent(in), double * out +allocatable(mold=in)+intent(out), int sizein +implied(size(in))+intent(in)+value)
// ----------------------------------------
// Argument:  in
// Exact:     py_native_in_dimension_list
// ----------------------------------------
// Argument:  out
// Requested: py_native_out_allocatable_list_mold
// Match:     py_native_out_allocatable_list
static char PY_cos_doubles__doc__[] =
"documentation"
;

/**
 * \brief compute cos of IN and save in OUT
 *
 * allocate OUT same type as IN implied size of array
 */
static PyObject *
PY_cos_doubles(
  PyObject *SHROUD_UNUSED(self),
  PyObject *args,
  PyObject *kwds)
{
// splicer begin function.cos_doubles
    PyObject *SHTPy_in = nullptr;
    double * in = nullptr;
    double * out = nullptr;
    const char *SHT_kwlist[] = {
        "in",
        nullptr };

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "O:cos_doubles",
        const_cast<char **>(SHT_kwlist), &SHTPy_in))
        return nullptr;

    // post_parse
    Py_ssize_t SHSize_in;
    if (SHROUD_from_PyObject_double(SHTPy_in, "in", &in, 
        &SHSize_in) == -1)
        goto fail;
    {
        // pre_call
        out = static_cast<double *>
            (std::malloc(sizeof(double) * SHSize_in));
        if (out == nullptr) {
            PyErr_NoMemory();
            goto fail;
        }
        int sizein = SHSize_in;

        cos_doubles(in, out, sizein);

        // post_call
        PyObject *SHPy_out = SHROUD_to_PyList_double(out, SHSize_in);
        if (SHPy_out == nullptr) goto fail;

        // cleanup
        std::free(in);
        std::free(out);

        return (PyObject *) SHPy_out;
    }

fail:
    if (in != nullptr) std::free(in);
    if (out != nullptr) std::free(out);
    return nullptr;
// splicer end function.cos_doubles
}

// void truncate_to_int(double * in +dimension(:)+intent(in), int * out +allocatable(mold=in)+intent(out), int sizein +implied(size(in))+intent(in)+value)
// ----------------------------------------
// Argument:  in
// Exact:     py_native_in_dimension_list
// ----------------------------------------
// Argument:  out
// Requested: py_native_out_allocatable_list_mold
// Match:     py_native_out_allocatable_list
static char PY_truncate_to_int__doc__[] =
"documentation"
;

/**
 * \brief truncate IN argument and save in OUT
 *
 * allocate OUT different type as IN
 * implied size of array
 */
static PyObject *
PY_truncate_to_int(
  PyObject *SHROUD_UNUSED(self),
  PyObject *args,
  PyObject *kwds)
{
// splicer begin function.truncate_to_int
    PyObject *SHTPy_in = nullptr;
    double * in = nullptr;
    int * out = nullptr;
    const char *SHT_kwlist[] = {
        "in",
        nullptr };

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "O:truncate_to_int",
        const_cast<char **>(SHT_kwlist), &SHTPy_in))
        return nullptr;

    // post_parse
    Py_ssize_t SHSize_in;
    if (SHROUD_from_PyObject_double(SHTPy_in, "in", &in, 
        &SHSize_in) == -1)
        goto fail;
    {
        // pre_call
        out = static_cast<int *>(std::malloc(sizeof(int) * SHSize_in));
        if (out == nullptr) {
            PyErr_NoMemory();
            goto fail;
        }
        int sizein = SHSize_in;

        truncate_to_int(in, out, sizein);

        // post_call
        PyObject *SHPy_out = SHROUD_to_PyList_int(out, SHSize_in);
        if (SHPy_out == nullptr) goto fail;

        // cleanup
        std::free(in);
        std::free(out);

        return (PyObject *) SHPy_out;
    }

fail:
    if (in != nullptr) std::free(in);
    if (out != nullptr) std::free(out);
    return nullptr;
// splicer end function.truncate_to_int
}

// void get_values(int * nvalues +intent(out), int * values +dimension(3)+intent(out))
// ----------------------------------------
// Argument:  nvalues
// Requested: py_native_*_out
// Match:     py_default
// ----------------------------------------
// Argument:  values
// Exact:     py_native_out_dimension_list
static char PY_get_values__doc__[] =
"documentation"
;

/**
 * \brief fill values into array
 *
 * The function knows how long the array must be.
 * Fortran will treat the dimension as assumed-length.
 * The Python wrapper will create a NumPy array or list so it must
 * have an explicit dimension (not assumed-length).
 */
static PyObject *
PY_get_values(
  PyObject *SHROUD_UNUSED(self),
  PyObject *SHROUD_UNUSED(args),
  PyObject *SHROUD_UNUSED(kwds))
{
// splicer begin function.get_values
    PyObject *SHPy_values = nullptr;
    int * values = nullptr;
    PyObject *SHTPy_rv = nullptr;  // return value object

    {
        // pre_call
        int nvalues;  // intent(out)
        values = static_cast<int *>(std::malloc(sizeof(int) * (3)));
        if (values == nullptr) {
            PyErr_NoMemory();
            goto fail;
        }

        get_values(&nvalues, values);

        // post_call
        SHPy_values = SHROUD_to_PyList_int(values, 3);
        if (SHPy_values == nullptr) goto fail;
        SHTPy_rv = Py_BuildValue("iO", nvalues, SHPy_values);

        // cleanup
        std::free(values);
        values = nullptr;

        return SHTPy_rv;
    }

fail:
    Py_XDECREF(SHPy_values);
    if (values != nullptr) std::free(values);
    return nullptr;
// splicer end function.get_values
}

// void get_values2(int * arg1 +dimension(3)+intent(out), int * arg2 +dimension(3)+intent(out))
// ----------------------------------------
// Argument:  arg1
// Exact:     py_native_out_dimension_list
// ----------------------------------------
// Argument:  arg2
// Exact:     py_native_out_dimension_list
static char PY_get_values2__doc__[] =
"documentation"
;

/**
 * \brief fill values into two arrays
 *
 * Test two intent(out) arguments.
 * Make sure error handling works with C++.
 */
static PyObject *
PY_get_values2(
  PyObject *SHROUD_UNUSED(self),
  PyObject *SHROUD_UNUSED(args),
  PyObject *SHROUD_UNUSED(kwds))
{
// splicer begin function.get_values2
    PyObject *SHPy_arg1 = nullptr;
    int * arg1 = nullptr;
    PyObject *SHPy_arg2 = nullptr;
    int * arg2 = nullptr;
    PyObject *SHTPy_rv = nullptr;  // return value object

    {
        // pre_call
        arg1 = static_cast<int *>(std::malloc(sizeof(int) * (3)));
        if (arg1 == nullptr) {
            PyErr_NoMemory();
            goto fail;
        }
        arg2 = static_cast<int *>(std::malloc(sizeof(int) * (3)));
        if (arg2 == nullptr) {
            PyErr_NoMemory();
            goto fail;
        }

        get_values2(arg1, arg2);

        // post_call
        SHPy_arg1 = SHROUD_to_PyList_int(arg1, 3);
        if (SHPy_arg1 == nullptr) goto fail;
        SHPy_arg2 = SHROUD_to_PyList_int(arg2, 3);
        if (SHPy_arg2 == nullptr) goto fail;
        SHTPy_rv = Py_BuildValue("OO", SHPy_arg1, SHPy_arg2);

        // cleanup
        std::free(arg1);
        arg1 = nullptr;
        std::free(arg2);
        arg2 = nullptr;

        return SHTPy_rv;
    }

fail:
    Py_XDECREF(SHPy_arg1);
    if (arg1 != nullptr) std::free(arg1);
    Py_XDECREF(SHPy_arg2);
    if (arg2 != nullptr) std::free(arg2);
    return nullptr;
// splicer end function.get_values2
}

// void iota_allocatable(int nvar +intent(in)+value, int * values +allocatable(nvar)+intent(out))
// ----------------------------------------
// Argument:  nvar
// Requested: py_native_in
// Match:     py_default
// ----------------------------------------
// Argument:  values
// Exact:     py_native_out_allocatable_list
static char PY_iota_allocatable__doc__[] =
"documentation"
;

static PyObject *
PY_iota_allocatable(
  PyObject *SHROUD_UNUSED(self),
  PyObject *args,
  PyObject *kwds)
{
// splicer begin function.iota_allocatable
    int nvar;
    int * values = nullptr;
    const char *SHT_kwlist[] = {
        "nvar",
        nullptr };

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "i:iota_allocatable",
        const_cast<char **>(SHT_kwlist), &nvar))
        return nullptr;
    {
        // pre_call
        values = static_cast<int *>(std::malloc(sizeof(int) * nvar));
        if (values == nullptr) {
            PyErr_NoMemory();
            goto fail;
        }

        iota_allocatable(nvar, values);

        // post_call
        PyObject *SHPy_values = SHROUD_to_PyList_int(values, nvar);
        if (SHPy_values == nullptr) goto fail;

        // cleanup
        std::free(values);

        return (PyObject *) SHPy_values;
    }

fail:
    if (values != nullptr) std::free(values);
    return nullptr;
// splicer end function.iota_allocatable
}

// void iota_dimension(int nvar +intent(in)+value, int * values +dimension(nvar)+intent(out))
// ----------------------------------------
// Argument:  nvar
// Requested: py_native_in
// Match:     py_default
// ----------------------------------------
// Argument:  values
// Exact:     py_native_out_dimension_list
static char PY_iota_dimension__doc__[] =
"documentation"
;

static PyObject *
PY_iota_dimension(
  PyObject *SHROUD_UNUSED(self),
  PyObject *args,
  PyObject *kwds)
{
// splicer begin function.iota_dimension
    int nvar;
    PyObject *SHPy_values = nullptr;
    int * values = nullptr;
    const char *SHT_kwlist[] = {
        "nvar",
        nullptr };

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "i:iota_dimension",
        const_cast<char **>(SHT_kwlist), &nvar))
        return nullptr;
    {
        // pre_call
        values = static_cast<int *>(std::malloc(sizeof(int) * (nvar)));
        if (values == nullptr) {
            PyErr_NoMemory();
            goto fail;
        }

        iota_dimension(nvar, values);

        // post_call
        SHPy_values = SHROUD_to_PyList_int(values, nvar);
        if (SHPy_values == nullptr) goto fail;

        // cleanup
        std::free(values);
        values = nullptr;

        return (PyObject *) SHPy_values;
    }

fail:
    Py_XDECREF(SHPy_values);
    if (values != nullptr) std::free(values);
    return nullptr;
// splicer end function.iota_dimension
}

// void Sum(int len +implied(size(values))+intent(in)+value, int * values +dimension(:)+intent(in), int * result +intent(out))
// ----------------------------------------
// Argument:  values
// Exact:     py_native_in_dimension_list
// ----------------------------------------
// Argument:  result
// Requested: py_native_*_out
// Match:     py_default
static char PY_Sum__doc__[] =
"documentation"
;

static PyObject *
PY_Sum(
  PyObject *SHROUD_UNUSED(self),
  PyObject *args,
  PyObject *kwds)
{
// splicer begin function.sum
    PyObject *SHTPy_values = nullptr;
    int * values = nullptr;
    const char *SHT_kwlist[] = {
        "values",
        nullptr };
    PyObject * SHPy_result = nullptr;

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "O:Sum",
        const_cast<char **>(SHT_kwlist), &SHTPy_values))
        return nullptr;

    // post_parse
    Py_ssize_t SHSize_values;
    if (SHROUD_from_PyObject_int(SHTPy_values, "values", &values, 
        &SHSize_values) == -1)
        goto fail;
    {
        // pre_call
        int result;  // intent(out)
        int len = SHSize_values;

        Sum(len, values, &result);

        // post_call
        SHPy_result = PyInt_FromLong(result);

        // cleanup
        std::free(values);

        return (PyObject *) SHPy_result;
    }

fail:
    if (values != nullptr) std::free(values);
    return nullptr;
// splicer end function.sum
}

// void fillIntArray(int * out +dimension(3)+intent(out))
// ----------------------------------------
// Argument:  out
// Exact:     py_native_out_dimension_list
static char PY_fillIntArray__doc__[] =
"documentation"
;

/**
 * Return three values into memory the user provides.
 */
static PyObject *
PY_fillIntArray(
  PyObject *SHROUD_UNUSED(self),
  PyObject *SHROUD_UNUSED(args),
  PyObject *SHROUD_UNUSED(kwds))
{
// splicer begin function.fill_int_array
    PyObject *SHPy_out = nullptr;
    int * out = nullptr;

    {
        // pre_call
        out = static_cast<int *>(std::malloc(sizeof(int) * (3)));
        if (out == nullptr) {
            PyErr_NoMemory();
            goto fail;
        }

        fillIntArray(out);

        // post_call
        SHPy_out = SHROUD_to_PyList_int(out, 3);
        if (SHPy_out == nullptr) goto fail;

        // cleanup
        std::free(out);
        out = nullptr;

        return (PyObject *) SHPy_out;
    }

fail:
    Py_XDECREF(SHPy_out);
    if (out != nullptr) std::free(out);
    return nullptr;
// splicer end function.fill_int_array
}

// void incrementIntArray(int * array +dimension(:)+intent(inout), int sizein +implied(size(array))+intent(in)+value)
// ----------------------------------------
// Argument:  array
// Exact:     py_native_inout_dimension_list
static char PY_incrementIntArray__doc__[] =
"documentation"
;

/**
 * Increment array in place using intent(INOUT).
 */
static PyObject *
PY_incrementIntArray(
  PyObject *SHROUD_UNUSED(self),
  PyObject *args,
  PyObject *kwds)
{
// splicer begin function.increment_int_array
    PyObject *SHTPy_array = nullptr;
    int * array = nullptr;
    const char *SHT_kwlist[] = {
        "array",
        nullptr };

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "O:incrementIntArray",
        const_cast<char **>(SHT_kwlist), &SHTPy_array))
        return nullptr;

    // post_parse
    Py_ssize_t SHSize_array;
    if (SHROUD_from_PyObject_int(SHTPy_array, "array", &array, 
        &SHSize_array) == -1)
        goto fail;
    {
        // pre_call
        int sizein = SHSize_array;

        incrementIntArray(array, sizein);

        // post_call
        PyObject *SHPy_array = SHROUD_to_PyList_int(array,
            SHSize_array);
        if (SHPy_array == nullptr) goto fail;

        // cleanup
        std::free(array);

        return (PyObject *) SHPy_array;
    }

fail:
    if (array != nullptr) std::free(array);
    return nullptr;
// splicer end function.increment_int_array
}

// void acceptCharArrayIn(char * * names +dimension(:)+intent(in))
// ----------------------------------------
// Argument:  names
// Exact:     py_char_**_in
static char PY_acceptCharArrayIn__doc__[] =
"documentation"
;

static PyObject *
PY_acceptCharArrayIn(
  PyObject *SHROUD_UNUSED(self),
  PyObject *args,
  PyObject *kwds)
{
// splicer begin function.accept_char_array_in
    char ** names = nullptr;
    PyObject * SHTPy_names;
    const char *SHT_kwlist[] = {
        "names",
        nullptr };

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "O:acceptCharArrayIn",
        const_cast<char **>(SHT_kwlist), &SHTPy_names))
        return nullptr;
    {
        // pre_call
        Py_ssize_t SHSize_names;
        if (SHROUD_from_PyObject_char(SHTPy_names, "names", &names, 
            &SHSize_names) == -1)
            goto fail;

        acceptCharArrayIn(names);

        // post_call
        std::free(names);
        names = nullptr;

        Py_RETURN_NONE;
    }

fail:
    if (names != nullptr) {
        std::free(names);
    }
    return nullptr;
// splicer end function.accept_char_array_in
}
static PyMethodDef PY_methods[] = {
{"intargs", (PyCFunction)PY_intargs, METH_VARARGS|METH_KEYWORDS,
    PY_intargs__doc__},
{"cos_doubles", (PyCFunction)PY_cos_doubles, METH_VARARGS|METH_KEYWORDS,
    PY_cos_doubles__doc__},
{"truncate_to_int", (PyCFunction)PY_truncate_to_int,
    METH_VARARGS|METH_KEYWORDS, PY_truncate_to_int__doc__},
{"get_values", (PyCFunction)PY_get_values, METH_NOARGS,
    PY_get_values__doc__},
{"get_values2", (PyCFunction)PY_get_values2, METH_NOARGS,
    PY_get_values2__doc__},
{"iota_allocatable", (PyCFunction)PY_iota_allocatable,
    METH_VARARGS|METH_KEYWORDS, PY_iota_allocatable__doc__},
{"iota_dimension", (PyCFunction)PY_iota_dimension,
    METH_VARARGS|METH_KEYWORDS, PY_iota_dimension__doc__},
{"Sum", (PyCFunction)PY_Sum, METH_VARARGS|METH_KEYWORDS, PY_Sum__doc__},
{"fillIntArray", (PyCFunction)PY_fillIntArray, METH_NOARGS,
    PY_fillIntArray__doc__},
{"incrementIntArray", (PyCFunction)PY_incrementIntArray,
    METH_VARARGS|METH_KEYWORDS, PY_incrementIntArray__doc__},
{"acceptCharArrayIn", (PyCFunction)PY_acceptCharArrayIn,
    METH_VARARGS|METH_KEYWORDS, PY_acceptCharArrayIn__doc__},
{nullptr,   (PyCFunction)nullptr, 0, nullptr}            /* sentinel */
};

/*
 * initpointers - Initialization function for the module
 * *must* be called initpointers
 */
static char PY__doc__[] =
"library documentation"
;

struct module_state {
    PyObject *error;
};

#if PY_MAJOR_VERSION >= 3
#define GETSTATE(m) ((struct module_state*)PyModule_GetState(m))
#else
#define GETSTATE(m) (&_state)
static struct module_state _state;
#endif

#if PY_MAJOR_VERSION >= 3
static int pointers_traverse(PyObject *m, visitproc visit, void *arg) {
    Py_VISIT(GETSTATE(m)->error);
    return 0;
}

static int pointers_clear(PyObject *m) {
    Py_CLEAR(GETSTATE(m)->error);
    return 0;
}

static struct PyModuleDef moduledef = {
    PyModuleDef_HEAD_INIT,
    "pointers", /* m_name */
    PY__doc__, /* m_doc */
    sizeof(struct module_state), /* m_size */
    PY_methods, /* m_methods */
    nullptr, /* m_reload */
    pointers_traverse, /* m_traverse */
    pointers_clear, /* m_clear */
    NULL  /* m_free */
};

#define RETVAL m
#define INITERROR return nullptr
#else
#define RETVAL
#define INITERROR return
#endif

extern "C" PyMODINIT_FUNC
#if PY_MAJOR_VERSION >= 3
PyInit_pointers(void)
#else
initpointers(void)
#endif
{
    PyObject *m = nullptr;
    const char * error_name = "pointers.Error";

    // splicer begin C_init_locals
    // splicer end C_init_locals


    /* Create the module and add the functions */
#if PY_MAJOR_VERSION >= 3
    m = PyModule_Create(&moduledef);
#else
    m = Py_InitModule4("pointers", PY_methods,
        PY__doc__,
        (PyObject*)nullptr,PYTHON_API_VERSION);
#endif
    if (m == nullptr)
        return RETVAL;
    struct module_state *st = GETSTATE(m);

    PY_error_obj = PyErr_NewException((char *) error_name, nullptr, nullptr);
    if (PY_error_obj == nullptr)
        return RETVAL;
    st->error = PY_error_obj;
    PyModule_AddObject(m, "Error", st->error);

    // splicer begin C_init_body
    // splicer end C_init_body

    /* Check for errors */
    if (PyErr_Occurred())
        Py_FatalError("can't initialize module pointers");
    return RETVAL;
}

