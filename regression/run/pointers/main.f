! Copyright (c) 2017-2018, Lawrence Livermore National Security, LLC. 
! Produced at the Lawrence Livermore National Laboratory 
!
! LLNL-CODE-738041.
! All rights reserved. 
!
! This file is part of Shroud.  For details, see
! https://github.com/LLNL/shroud. Please also read shroud/LICENSE.
!
! Redistribution and use in source and binary forms, with or without
! modification, are permitted provided that the following conditions are
! met:
!
! * Redistributions of source code must retain the above copyright
!   notice, this list of conditions and the disclaimer below.
! 
! * Redistributions in binary form must reproduce the above copyright
!   notice, this list of conditions and the disclaimer (as noted below)
!   in the documentation and/or other materials provided with the
!   distribution.
!
! * Neither the name of the LLNS/LLNL nor the names of its contributors
!   may be used to endorse or promote products derived from this
!   software without specific prior written permission.
!
! THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
! "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
! LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
! A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL LAWRENCE
! LIVERMORE NATIONAL SECURITY, LLC, THE U.S. DEPARTMENT OF ENERGY OR
! CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
! EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
! PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
! PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
! LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
! NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
! SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
!
! #######################################################################
!
! Test code generated by the tutorial test
!
program tester
  use fruit
  use iso_c_binding
  use pointers_mod
  implicit none
  real(C_DOUBLE), parameter :: pi = 3.1415926_C_DOUBLE
  logical ok

  call init_fruit

  call test_functions

  call fruit_summary
  call fruit_finalize

  call is_all_successful(ok)
  if (.not. ok) then
     call exit(1)
  endif

contains

  subroutine test_functions
    integer(c_int) iargin, iarginout, iargout
    real(c_double) :: in_double(5)
    real(c_double), allocatable :: out_double(:)
    integer(c_int), allocatable :: out_int(:)
    integer(c_int) :: incr(4)
    integer(c_int) :: nvalues, values1(3), values2(3)

    call set_case_name("test_functions")

    iargin    = 1
    iarginout = 2
    iargout   = -1
    call intargs(iargin, iarginout, iargout)
    call assert_true(iarginout == 1)
    call assert_true(iargout   == 2)

    call assert_false(allocated(out_double))
    in_double = [0.0*pi, 0.5*pi, pi, 1.5*pi, 2.0*pi]
    call cos_doubles(in_double, out_double)
    call assert_true(allocated(out_double))
    call assert_true(all(abs(out_double - cos(in_double)) < 1.e-08 ))

    call assert_false(allocated(out_int))
    call truncate_to_int([1.2d0, 2.3d0, 3.4d0, 4.5d0], out_int)
    call assert_true(allocated(out_int))
    call assert_true(all(out_int == [1, 2, 3, 4]))

    incr = [2, 4, 6, 8]
    call increment(incr)
    call assert_true(all(incr == [3, 5, 7, 9]))

    values1 = 0
    call get_values(nvalues, values1)
    call assert_equals(3, nvalues)
    call assert_true(all(values1(1:3) == [1, 2, 3]))

    values1 = 0
    values2 = 0
    call get_values2(values1, values2)
    call assert_true(all(values1(1:3) == [1, 2, 3]))
    call assert_true(all(values2(1:3) == [11, 12, 13]))

  end subroutine test_functions

end program tester
