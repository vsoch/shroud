! Copyright (c) 2017-2021, Lawrence Livermore National Security, LLC and
! other Shroud Project Developers.
! See the top-level COPYRIGHT file for details.
!
! SPDX-License-Identifier: (BSD-3-Clause)
! #######################################################################
!
! Test Fortran API generated from struct.yaml.
! Used by struct-c, struct-cxx
!
program tester
  use fruit
  use iso_c_binding
  use struct_mod
  implicit none
  logical ok

  integer, parameter :: lenoutbuf = 40

  call init_fruit

  call test_struct
  call test_struct2
  call test_struct_array
  call test_struct_class

  call fruit_summary
  call fruit_finalize

  call is_all_successful(ok)
  if (.not. ok) then
     call exit(1)
  endif

contains

  subroutine test_struct
    character(lenoutbuf)  :: outbuf
    type(cstruct1) str1
    integer(C_INT) rvi

    call set_case_name("test_struct")

    str1 = cstruct1(2, 2.0)
    call assert_equals(2_C_INT, str1%ifield, "cstruct1 constructor ifield")
    call assert_equals(2.0_C_DOUBLE, str1%dfield, "cstruct1 constructor dfield")
    
    str1%dfield = 2.0_C_DOUBLE
    rvi = pass_struct_by_value(str1)
    call assert_equals(4, rvi, "passStructByValue")
    ! Make sure str1 was passed by value.
    call assert_equals(2_C_INT, str1%ifield, "passStructByValue ifield")
    call assert_equals(2.0_C_DOUBLE, str1%dfield, "passStructByValue dfield")

    str1%ifield = 12
    str1%dfield = 12.6
    call assert_equals(12, pass_struct1(str1), "passStruct1")

    str1%ifield = 22
    str1%dfield = 22.8
    call assert_equals(22, pass_struct2(str1, outbuf), "passStruct2")

    str1%ifield = 3_C_INT
    str1%dfield = 3.0_C_DOUBLE
    rvi = accept_struct_in_ptr(str1)
    call assert_equals(6, rvi, "acceptStructInPtr")

    str1%ifield = 0
    str1%dfield = 0.0
    call accept_struct_out_ptr(str1, 4_C_INT, 4.5_C_DOUBLE)
    call assert_equals(4_C_INT,      str1%ifield, "acceptStructOutPtr i field")
    call assert_equals(4.5_C_DOUBLE, str1%dfield, "acceptStructOutPtr d field")

    str1%ifield = 4_C_INT
    str1%dfield = 4.0_C_DOUBLE
    call accept_struct_in_out_ptr(str1)
    call assert_equals(5_C_INT,      str1%ifield, "acceptStructInOutPtr i field")
    call assert_equals(5.0_C_DOUBLE, str1%dfield, "acceptStructInOutPtr d field")

  end subroutine test_struct

  subroutine test_struct2
    ! return structs

    character(lenoutbuf)  :: outbuf
    type(cstruct1) :: str1
    type(cstruct1), pointer :: str2

    call set_case_name("test_struct2")

    str1 = return_struct_by_value(1_C_INT, 2.5_C_DOUBLE)
    call assert_equals(1_C_INT,      str1%ifield, "returnStructByValue i field")
    call assert_equals(2.5_C_DOUBLE, str1%dfield, "returnStructByValue d field")

    nullify(str2)
    str2 => return_struct_ptr1(33, 33.5d0)
    call assert_true(associated(str2), "returnStructPtr1")
    call assert_equals(33, str2%ifield, "returnStructPtr2")

    nullify(str2)
    str2 => return_struct_ptr2(35, 35.5d0, outbuf)
    call assert_true(associated(str2), "returnStructPtr2")
    call assert_equals(35, str2%ifield, "returnStructPtr2")

  end subroutine test_struct2

  subroutine test_struct_array
    type(arrays1) str1

    str1%name = " "
    str1%count = 0

    call assert_equals(1, len(str1%name), "test_struct_array")
    call assert_equals(20, size(str1%name), "test_struct_array")
    call assert_equals(10, size(str1%count), "test_struct_array")
    
  end subroutine test_struct_array

  subroutine test_struct_class
    ! start main.f test_struct_class
    type(cstruct_as_class) point1, point2
    type(cstruct_as_subclass) subpoint1

    ! F_name_associated is blank so the associated function is not created.
    ! Instead look at pointer directly.
    ! call assert_false(point1%associated())
    call assert_false(c_associated(point1%cxxmem%addr))

    point1 = Cstruct_as_class()
    call assert_equals(0, point1%get_x1())
    call assert_equals(0, point1%get_y1())

    point2 = Cstruct_as_class(1, 2)
    call assert_equals(1, point2%get_x1())
    call assert_equals(2, point2%get_y1())

    call assert_equals(3, cstruct_as_class_sum(point2))
    call assert_equals(3, point2%sum())

    subpoint1 = Cstruct_as_subclass(1, 2, 3)
    call assert_equals(1, subpoint1%get_x1())
    call assert_equals(2, subpoint1%get_y1())
    call assert_equals(3, subpoint1%get_z1())
    call assert_equals(3, subpoint1%sum())
    ! end main.f test_struct_class

  end subroutine test_struct_class

end program tester
