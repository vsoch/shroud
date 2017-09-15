// Copyright (c) 2017, Lawrence Livermore National Security, LLC. 
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
//
// tutorial.hpp - wrapped routines
//

#include "strings.hpp"
#include <cstring>

static std::string last_function_called;

// These variables exist to avoid warning errors
static const char * static_char = "bird";
static std::string static_str = std::string("dog");
static std::string global_str;
static std::string static_str_empty;

//----------------------------------------

void passChar(char status)
{
    if (status == 'w') {
	global_str = "w";
    }
}

char returnChar()
{
    return 'w';
}

//----------------------------------------

void passCharPtr(char *dest, const char *src)
{
    std::strcpy(dest, src);
}

//----------------------------------------

const char * getChar1()
{
    return static_char;
}

const char * getChar2()
{
    return static_char;
}

const char * getChar3()
{
    return static_char;
}

//----------------------------------------

const std::string& getString1()
{
    return static_str;
}

const std::string& getString2()
{
    return static_str;
}

const std::string& getString3()
{
    return static_str;
}

const std::string& getString2_empty()
{
    return static_str_empty;
}

//----------------------------------------

void acceptStringConstReference(const std::string & arg1)
{
    global_str = arg1;
}

void acceptStringReference(std::string & arg1)
{
    arg1.append("dog");
}

void acceptStringPointer(std::string * arg1)
{
    global_str = *arg1;
}

//----------------------------------------

char *keep_explicit1;
void explicit1(char * name)
{
  keep_explicit1 = name;
}

void explicit2(char * name)
{
  *name = 'a';
}

//----------------------------------------
