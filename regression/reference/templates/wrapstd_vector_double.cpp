// wrapstd_vector_double.cpp
// This file is generated by Shroud nowrite-version. Do not edit.
// Copyright (c) 2017-2021, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
#include "wrapstd_vector_double.h"

// cxx_header
#include <vector>
// shroud
#include <cstddef>

// splicer begin namespace.std.class.vector.CXX_definitions
// splicer end namespace.std.class.vector.CXX_definitions

extern "C" {

// splicer begin namespace.std.class.vector.C_definitions
// splicer end namespace.std.class.vector.C_definitions

// ----------------------------------------
// Function:  vector
// Attrs:     +intent(result)
// Exact:     c_shadow_scalar_ctor
TEM_vector_double * TEM_vector_double_ctor(
    TEM_vector_double * SHadow_rv)
{
    // splicer begin namespace.std.class.vector.method.ctor
    std::vector<double> *SHCXX_rv = new std::vector<double>();
    SHadow_rv->addr = static_cast<void *>(SHCXX_rv);
    SHadow_rv->idtor = 2;
    return SHadow_rv;
    // splicer end namespace.std.class.vector.method.ctor
}

// ----------------------------------------
// Function:  ~vector
// Exact:     c_shadow_dtor
void TEM_vector_double_dtor(TEM_vector_double * self)
{
    std::vector<double> *SH_this = static_cast<std::vector<double> *>
        (self->addr);
    // splicer begin namespace.std.class.vector.method.dtor
    delete SH_this;
    self->addr = nullptr;
    // splicer end namespace.std.class.vector.method.dtor
}

// ----------------------------------------
// Function:  void push_back
// Requested: c
// Match:     c_default
// ----------------------------------------
// Argument:  const double & value +intent(in)
// Attrs:     +intent(in)
// Requested: c_native_&_in
// Match:     c_default
void TEM_vector_double_push_back(TEM_vector_double * self,
    const double * value)
{
    std::vector<double> *SH_this = static_cast<std::vector<double> *>
        (self->addr);
    // splicer begin namespace.std.class.vector.method.push_back
    SH_this->push_back(*value);
    // splicer end namespace.std.class.vector.method.push_back
}

// ----------------------------------------
// Function:  double & at +deref(pointer)
// Attrs:     +deref(pointer)+intent(result)
// Requested: c_native_&_result
// Match:     c_default
// ----------------------------------------
// Argument:  size_type n +value
// Attrs:     +intent(in)
// Requested: c_native_scalar_in
// Match:     c_default
double * TEM_vector_double_at(TEM_vector_double * self, size_t n)
{
    std::vector<double> *SH_this = static_cast<std::vector<double> *>
        (self->addr);
    // splicer begin namespace.std.class.vector.method.at
    double & SHC_rv = SH_this->at(n);
    return &SHC_rv;
    // splicer end namespace.std.class.vector.method.at
}

}  // extern "C"
