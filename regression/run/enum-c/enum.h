/*
 * Copyright (c) 2017-2021, Lawrence Livermore National Security, LLC and
 * other Shroud Project Developers.
 * See the top-level COPYRIGHT file for details.
 *
 * SPDX-License-Identifier: (BSD-3-Clause)
 */

#ifndef ENUM_H
#define ENUM_H

enum Color {
  RED = 10,
  BLUE,
  WHITE
};

enum val {
  a1,
  b1 = 3,
  c1,
  d1 = b1 - a1,
  e1 = d1,
  f1,
  g1,
  h1 = 100,
};

#endif // ENUM_H

