// wrapClass1.cpp
// This is generated code, do not edit
// #######################################################################
// Copyright (c) 2017-2018, Lawrence Livermore National Security, LLC.
// Produced at the Lawrence Livermore National Laboratory
//
// LLNL-CODE-738041.
// All rights reserved.
//
// This file is part of Shroud.  For details, see
// https://github.com/LLNL/shroud. Please also read shroud/LICENSE.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
// * Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the disclaimer below.
//
// * Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the disclaimer (as noted below)
//   in the documentation and/or other materials provided with the
//   distribution.
//
// * Neither the name of the LLNS/LLNL nor the names of its contributors
//   may be used to endorse or promote products derived from this
//   software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL LAWRENCE
// LIVERMORE NATIONAL SECURITY, LLC, THE U.S. DEPARTMENT OF ENERGY OR
// CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
// EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
// PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
// PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
// LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
// NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// #######################################################################
#include "wrapClass1.h"
#include "tutorial.hpp"

namespace tutorial {

// splicer begin class.Class1.CXX_definitions
// splicer end class.Class1.CXX_definitions

extern "C" {

// splicer begin class.Class1.C_definitions
// splicer end class.Class1.C_definitions

// Class1() +name(new)
// function_index=0
TUT_class1 * TUT_class1_new_default()
{
// splicer begin class.Class1.method.new_default
    Class1 * SHCXX_rv = new Class1();
    TUT_class1 * SHC_rv = static_cast<TUT_class1 *>(static_cast<void *>(
        SHCXX_rv));
    return SHC_rv;
// splicer end class.Class1.method.new_default
}

// Class1(int flag +intent(in)+value) +name(new)
// function_index=1
TUT_class1 * TUT_class1_new_flag(int flag)
{
// splicer begin class.Class1.method.new_flag
    Class1 * SHCXX_rv = new Class1(flag);
    TUT_class1 * SHC_rv = static_cast<TUT_class1 *>(static_cast<void *>(
        SHCXX_rv));
    return SHC_rv;
// splicer end class.Class1.method.new_flag
}

// ~Class1() +name(delete)
// function_index=2
void TUT_class1_delete(TUT_class1 * self)
{
// splicer begin class.Class1.method.delete
    Class1 *SH_this = static_cast<Class1 *>(static_cast<void *>(self));
    delete SH_this;
    return;
// splicer end class.Class1.method.delete
}

// int Method1()
// function_index=3
/**
 * \brief returns the value of flag member
 *
 */
int TUT_class1_method1(TUT_class1 * self)
{
// splicer begin class.Class1.method.method1
    Class1 *SH_this = static_cast<Class1 *>(static_cast<void *>(self));
    int SHC_rv = SH_this->Method1();
    return SHC_rv;
// splicer end class.Class1.method.method1
}

// bool equivalent(const Class1 & obj2 +intent(in)+value) const
// function_index=4
/**
 * \brief Pass in reference to instance
 *
 */
bool TUT_class1_equivalent(const TUT_class1 * self,
    const TUT_class1 * obj2)
{
// splicer begin class.Class1.method.equivalent
    const Class1 *SH_this = static_cast<const Class1 *>(
        static_cast<const void *>(self));
    const Class1 * SHCXX_obj2 = static_cast<const Class1 *>(
        static_cast<const void *>(obj2));
    bool SHC_rv = SH_this->equivalent(*SHCXX_obj2);
    return SHC_rv;
// splicer end class.Class1.method.equivalent
}

}  // extern "C"

}  // namespace tutorial
