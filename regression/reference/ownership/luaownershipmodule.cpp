// luaownershipmodule.cpp
// This is generated code, do not edit
// Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
// other Shroud Project Developers.
// See the top-level COPYRIGHT file for details.
//
// SPDX-License-Identifier: (BSD-3-Clause)
//
#include "ownership.hpp"
#include "luaownershipmodule.hpp"
#ifdef __cplusplus
extern "C" {
#endif
#include "lauxlib.h"
#ifdef __cplusplus
}
#endif
// splicer begin include
// splicer end include
// splicer begin C_definition
// splicer end C_definition

// ~Class1()
static int l_Class1_dtor(lua_State *L)
{
    // splicer begin class.Class1.method.__gc
    l_Class1_Type * SH_this = (l_Class1_Type *) luaL_checkudata(
        L, 1, "Class1.metatable");
    delete SH_this->self;
    SH_this->self = NULL;
    return 0;
    // splicer end class.Class1.method.__gc
}

// splicer begin class.Class1.additional_functions
// splicer end class.Class1.additional_functions

static const struct luaL_Reg l_Class1_Reg [] = {
    {"__gc", l_Class1_dtor},
    // splicer begin class.Class1.register
    // splicer end class.Class1.register
    {NULL, NULL}   /*sentinel */
};

// splicer begin additional_functions
// splicer end additional_functions

static const struct luaL_Reg l_ownership_Reg [] = {
    // splicer begin register
    // splicer end register
    {NULL, NULL}   /*sentinel */
};

#ifdef __cplusplus
extern "C" {
#endif
int luaopen_ownership(lua_State *L) {

    /* Create the metatable and put it on the stack. */
    luaL_newmetatable(L, "Class1.metatable");
    /* Duplicate the metatable on the stack (We now have 2). */
    lua_pushvalue(L, -1);
    /* Pop the first metatable off the stack and assign it to __index
     * of the second one. We set the metatable for the table to itself.
     * This is equivalent to the following in lua:
     * metatable = {}
     * metatable.__index = metatable
     */
    lua_setfield(L, -2, "__index");

    /* Set the methods to the metatable that should be accessed via object:func */
#if LUA_VERSION_NUM < 502
    luaL_register(L, NULL, l_Class1_Reg);
#else
    luaL_setfuncs(L, l_Class1_Reg, 0);
#endif


#if LUA_VERSION_NUM < 502
    luaL_register(L, "ownership", l_ownership_Reg);
#else
    luaL_newlib(L, l_ownership_Reg);
#endif
    return 1;
}
#ifdef __cplusplus
}
#endif
