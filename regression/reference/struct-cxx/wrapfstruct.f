! wrapfstruct.f
! This file is generated by Shroud 0.11.0. Do not edit.
! Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
! other Shroud Project Developers.
! See the top-level COPYRIGHT file for details.
!
! SPDX-License-Identifier: (BSD-3-Clause)
!
!>
!! \file wrapfstruct.f
!! \brief Shroud generated wrapper for struct library
!<
! splicer begin file_top
! splicer end file_top
module struct_mod
    use iso_c_binding, only : C_CHAR, C_DOUBLE, C_INT, C_PTR
    ! splicer begin module_use
    ! splicer end module_use
    implicit none

    ! splicer begin module_top
    integer, parameter :: MAXNAME = 20
    ! splicer end module_top


    ! start derived-type cstruct1
    type, bind(C) :: cstruct1
        integer(C_INT) :: ifield
        real(C_DOUBLE) :: dfield
    end type cstruct1
    ! end derived-type cstruct1


    type, bind(C) :: cstruct_ptr
        type(C_PTR) :: cfield
        type(C_PTR) :: const_dvalue
    end type cstruct_ptr


    type, bind(C) :: cstruct_list
        integer(C_INT) :: nitems
        type(C_PTR) :: ivalue
        type(C_PTR) :: dvalue
        type(C_PTR) :: svalue
    end type cstruct_list


    type, bind(C) :: cstruct_numpy
        integer(C_INT) :: nitems
        type(C_PTR) :: ivalue
        type(C_PTR) :: dvalue
    end type cstruct_numpy


    type, bind(C) :: arrays1
        character(kind=C_CHAR) :: name(20)
        integer(C_INT) :: count(10)
    end type arrays1

    interface

        ! ----------------------------------------
        ! Function:  int passStructByValue
        ! Requested: c_native_scalar_result
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  Cstruct1 arg +intent(in)+value
        ! Requested: c_struct_scalar_in
        ! Match:     c_struct
        ! start pass_struct_by_value
        function pass_struct_by_value(arg) &
                result(SHT_rv) &
                bind(C, name="STR_pass_struct_by_value")
            use iso_c_binding, only : C_INT
            import :: cstruct1
            implicit none
            type(cstruct1), value, intent(IN) :: arg
            integer(C_INT) :: SHT_rv
        end function pass_struct_by_value
        ! end pass_struct_by_value

        ! ----------------------------------------
        ! Function:  int passStruct1
        ! Requested: c_native_scalar_result
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  Cstruct1 * arg +intent(in)
        ! Requested: c_struct_*_in
        ! Match:     c_struct
        ! start pass_struct1
        function pass_struct1(arg) &
                result(SHT_rv) &
                bind(C, name="STR_pass_struct1")
            use iso_c_binding, only : C_INT
            import :: cstruct1
            implicit none
            type(cstruct1), intent(IN) :: arg
            integer(C_INT) :: SHT_rv
        end function pass_struct1
        ! end pass_struct1

        ! ----------------------------------------
        ! Function:  int passStruct2
        ! Requested: c_native_scalar_result
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  Cstruct1 * s1 +intent(in)
        ! Requested: c_struct_*_in
        ! Match:     c_struct
        ! ----------------------------------------
        ! Argument:  char * outbuf +charlen(LENOUTBUF)+intent(out)
        ! Requested: c_char_*_out
        ! Match:     c_default
        function c_pass_struct2(s1, outbuf) &
                result(SHT_rv) &
                bind(C, name="STR_pass_struct2")
            use iso_c_binding, only : C_CHAR, C_INT
            import :: cstruct1
            implicit none
            type(cstruct1), intent(IN) :: s1
            character(kind=C_CHAR), intent(OUT) :: outbuf(*)
            integer(C_INT) :: SHT_rv
        end function c_pass_struct2

        ! ----------------------------------------
        ! Function:  int passStruct2
        ! Requested: c_native_scalar_result_buf
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  Cstruct1 * s1 +intent(in)
        ! Requested: c_struct_*_in_buf
        ! Match:     c_struct
        ! ----------------------------------------
        ! Argument:  char * outbuf +charlen(LENOUTBUF)+intent(out)+len(Noutbuf)
        ! Requested: c_char_*_out_buf
        ! Match:     c_char_out_buf
        function c_pass_struct2_bufferify(s1, outbuf, Noutbuf) &
                result(SHT_rv) &
                bind(C, name="STR_pass_struct2_bufferify")
            use iso_c_binding, only : C_CHAR, C_INT
            import :: cstruct1
            implicit none
            type(cstruct1), intent(IN) :: s1
            character(kind=C_CHAR), intent(OUT) :: outbuf(*)
            integer(C_INT), value, intent(IN) :: Noutbuf
            integer(C_INT) :: SHT_rv
        end function c_pass_struct2_bufferify

        ! ----------------------------------------
        ! Function:  int acceptStructInPtr
        ! Requested: c_native_scalar_result
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  Cstruct1 * arg +intent(in)
        ! Requested: c_struct_*_in
        ! Match:     c_struct
        function accept_struct_in_ptr(arg) &
                result(SHT_rv) &
                bind(C, name="STR_accept_struct_in_ptr")
            use iso_c_binding, only : C_INT
            import :: cstruct1
            implicit none
            type(cstruct1), intent(IN) :: arg
            integer(C_INT) :: SHT_rv
        end function accept_struct_in_ptr

        ! ----------------------------------------
        ! Function:  void acceptStructOutPtr
        ! Requested: c_unknown_scalar_result
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  Cstruct1 * arg +intent(out)
        ! Requested: c_struct_*_out
        ! Match:     c_struct
        ! ----------------------------------------
        ! Argument:  int i +intent(in)+value
        ! Requested: c_native_scalar_in
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  double d +intent(in)+value
        ! Requested: c_native_scalar_in
        ! Match:     c_default
        subroutine accept_struct_out_ptr(arg, i, d) &
                bind(C, name="STR_accept_struct_out_ptr")
            use iso_c_binding, only : C_DOUBLE, C_INT
            import :: cstruct1
            implicit none
            type(cstruct1), intent(OUT) :: arg
            integer(C_INT), value, intent(IN) :: i
            real(C_DOUBLE), value, intent(IN) :: d
        end subroutine accept_struct_out_ptr

        ! ----------------------------------------
        ! Function:  void acceptStructInOutPtr
        ! Requested: c_unknown_scalar_result
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  Cstruct1 * arg +intent(inout)
        ! Requested: c_struct_*_inout
        ! Match:     c_struct
        subroutine accept_struct_in_out_ptr(arg) &
                bind(C, name="STR_accept_struct_in_out_ptr")
            import :: cstruct1
            implicit none
            type(cstruct1), intent(INOUT) :: arg
        end subroutine accept_struct_in_out_ptr

        ! ----------------------------------------
        ! Function:  Cstruct1 returnStructByValue
        ! Requested: c_struct_scalar_result
        ! Match:     c_struct_result
        ! ----------------------------------------
        ! Argument:  int i +intent(in)+value
        ! Requested: c_native_scalar_in
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  double d +intent(in)+value
        ! Requested: c_native_scalar_in
        ! Match:     c_default
        function return_struct_by_value(i, d) &
                result(SHT_rv) &
                bind(C, name="STR_return_struct_by_value")
            use iso_c_binding, only : C_DOUBLE, C_INT
            import :: cstruct1
            implicit none
            integer(C_INT), value, intent(IN) :: i
            real(C_DOUBLE), value, intent(IN) :: d
            type(cstruct1) :: SHT_rv
        end function return_struct_by_value

        ! ----------------------------------------
        ! Function:  const Cstruct1 returnConstStructByValue
        ! Requested: c_struct_scalar_result
        ! Match:     c_struct_result
        ! ----------------------------------------
        ! Argument:  int i +intent(in)+value
        ! Requested: c_native_scalar_in
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  double d +intent(in)+value
        ! Requested: c_native_scalar_in
        ! Match:     c_default
        function return_const_struct_by_value(i, d) &
                result(SHT_rv) &
                bind(C, name="STR_return_const_struct_by_value")
            use iso_c_binding, only : C_DOUBLE, C_INT
            import :: cstruct1
            implicit none
            integer(C_INT), value, intent(IN) :: i
            real(C_DOUBLE), value, intent(IN) :: d
            type(cstruct1) :: SHT_rv
        end function return_const_struct_by_value

        ! ----------------------------------------
        ! Function:  Cstruct1 * returnStructPtr1 +deref(pointer)
        ! Requested: c_struct_*_result
        ! Match:     c_struct_result
        ! ----------------------------------------
        ! Argument:  int i +intent(in)+value
        ! Requested: c_native_scalar_in
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  double d +intent(in)+value
        ! Requested: c_native_scalar_in
        ! Match:     c_default
        function c_return_struct_ptr1(i, d) &
                result(SHT_rv) &
                bind(C, name="STR_return_struct_ptr1")
            use iso_c_binding, only : C_DOUBLE, C_INT, C_PTR
            implicit none
            integer(C_INT), value, intent(IN) :: i
            real(C_DOUBLE), value, intent(IN) :: d
            type(C_PTR) SHT_rv
        end function c_return_struct_ptr1

        ! ----------------------------------------
        ! Function:  Cstruct1 * returnStructPtr2 +deref(pointer)
        ! Requested: c_struct_*_result
        ! Match:     c_struct_result
        ! ----------------------------------------
        ! Argument:  int i +intent(in)+value
        ! Requested: c_native_scalar_in
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  double d +intent(in)+value
        ! Requested: c_native_scalar_in
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  char * outbuf +charlen(LENOUTBUF)+intent(out)
        ! Requested: c_char_*_out
        ! Match:     c_default
        function c_return_struct_ptr2(i, d, outbuf) &
                result(SHT_rv) &
                bind(C, name="STR_return_struct_ptr2")
            use iso_c_binding, only : C_CHAR, C_DOUBLE, C_INT, C_PTR
            implicit none
            integer(C_INT), value, intent(IN) :: i
            real(C_DOUBLE), value, intent(IN) :: d
            character(kind=C_CHAR), intent(OUT) :: outbuf(*)
            type(C_PTR) SHT_rv
        end function c_return_struct_ptr2

        ! ----------------------------------------
        ! Function:  Cstruct1 * returnStructPtr2 +deref(pointer)
        ! Requested: c_struct_*_result_buf
        ! Match:     c_struct_result
        ! ----------------------------------------
        ! Argument:  int i +intent(in)+value
        ! Requested: c_native_scalar_in_buf
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  double d +intent(in)+value
        ! Requested: c_native_scalar_in_buf
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  char * outbuf +charlen(LENOUTBUF)+intent(out)+len(Noutbuf)
        ! Requested: c_char_*_out_buf
        ! Match:     c_char_out_buf
        function c_return_struct_ptr2_bufferify(i, d, outbuf, Noutbuf) &
                result(SHT_rv) &
                bind(C, name="STR_return_struct_ptr2_bufferify")
            use iso_c_binding, only : C_CHAR, C_DOUBLE, C_INT, C_PTR
            implicit none
            integer(C_INT), value, intent(IN) :: i
            real(C_DOUBLE), value, intent(IN) :: d
            character(kind=C_CHAR), intent(OUT) :: outbuf(*)
            integer(C_INT), value, intent(IN) :: Noutbuf
            type(C_PTR) SHT_rv
        end function c_return_struct_ptr2_bufferify

        ! ----------------------------------------
        ! Function:  Cstruct_list * get_global_struct_list +deref(pointer)
        ! Requested: c_struct_*_result
        ! Match:     c_struct_result
        function c_get_global_struct_list() &
                result(SHT_rv) &
                bind(C, name="STR_get_global_struct_list")
            use iso_c_binding, only : C_PTR
            implicit none
            type(C_PTR) SHT_rv
        end function c_get_global_struct_list

        ! splicer begin additional_interfaces
        ! splicer end additional_interfaces
    end interface

contains

    ! Generated by arg_to_buffer
    ! ----------------------------------------
    ! Function:  int passStruct2
    ! int passStruct2
    ! Requested: f_native_scalar_result
    ! Match:     f_default
    ! Requested: c_native_scalar_result_buf
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  Cstruct1 * s1 +intent(in)
    ! Requested: f_struct_*_in
    ! Match:     f_default
    ! Requested: c_struct_*_in_buf
    ! Match:     c_struct
    ! ----------------------------------------
    ! Argument:  char * outbuf +charlen(LENOUTBUF)+intent(out)
    ! Requested: f_char_*_out
    ! Match:     f_default
    ! Argument:  char * outbuf +charlen(LENOUTBUF)+intent(out)+len(Noutbuf)
    ! Requested: c_char_*_out_buf
    ! Match:     c_char_out_buf
    !>
    !! Pass name argument which will build a bufferify function.
    !<
    function pass_struct2(s1, outbuf) &
            result(SHT_rv)
        use iso_c_binding, only : C_INT
        type(cstruct1), intent(IN) :: s1
        character(len=*), intent(OUT) :: outbuf
        integer(C_INT) :: SHT_rv
        ! splicer begin function.pass_struct2
        SHT_rv = c_pass_struct2_bufferify(s1, outbuf, &
            len(outbuf, kind=C_INT))
        ! splicer end function.pass_struct2
    end function pass_struct2

    ! ----------------------------------------
    ! Function:  Cstruct1 * returnStructPtr1 +deref(pointer)
    ! Cstruct1 * returnStructPtr1 +deref(pointer)
    ! Requested: f_struct_*_result_pointer
    ! Match:     f_struct_*_result
    ! Requested: c_struct_*_result
    ! Match:     c_struct_result
    ! ----------------------------------------
    ! Argument:  int i +intent(in)+value
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  double d +intent(in)+value
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    !>
    !! \brief Return a pointer to a struct
    !!
    !! Does not generate a bufferify C wrapper.
    !<
    function return_struct_ptr1(i, d) &
            result(SHT_rv)
        use iso_c_binding, only : C_DOUBLE, C_INT, C_PTR, c_f_pointer
        integer(C_INT), value, intent(IN) :: i
        real(C_DOUBLE), value, intent(IN) :: d
        type(cstruct1), pointer :: SHT_rv
        ! splicer begin function.return_struct_ptr1
        type(C_PTR) :: SHT_ptr
        SHT_ptr = c_return_struct_ptr1(i, d)
        call c_f_pointer(SHT_ptr, SHT_rv)
        ! splicer end function.return_struct_ptr1
    end function return_struct_ptr1

    ! Generated by arg_to_buffer
    ! ----------------------------------------
    ! Function:  Cstruct1 * returnStructPtr2 +deref(pointer)
    ! Cstruct1 * returnStructPtr2 +deref(pointer)
    ! Requested: f_struct_*_result_pointer
    ! Match:     f_struct_*_result
    ! Requested: c_struct_*_result_buf
    ! Match:     c_struct_result
    ! ----------------------------------------
    ! Argument:  int i +intent(in)+value
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Requested: c_native_scalar_in_buf
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  double d +intent(in)+value
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Requested: c_native_scalar_in_buf
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  char * outbuf +charlen(LENOUTBUF)+intent(out)
    ! Requested: f_char_*_out
    ! Match:     f_default
    ! Argument:  char * outbuf +charlen(LENOUTBUF)+intent(out)+len(Noutbuf)
    ! Requested: c_char_*_out_buf
    ! Match:     c_char_out_buf
    !>
    !! \brief Return a pointer to a struct
    !!
    !! Generates a bufferify C wrapper function.
    !<
    function return_struct_ptr2(i, d, outbuf) &
            result(SHT_rv)
        use iso_c_binding, only : C_DOUBLE, C_INT, C_PTR, c_f_pointer
        integer(C_INT), value, intent(IN) :: i
        real(C_DOUBLE), value, intent(IN) :: d
        character(len=*), intent(OUT) :: outbuf
        type(cstruct1), pointer :: SHT_rv
        ! splicer begin function.return_struct_ptr2
        type(C_PTR) :: SHT_ptr
        SHT_ptr = c_return_struct_ptr2_bufferify(i, d, outbuf, &
            len(outbuf, kind=C_INT))
        call c_f_pointer(SHT_ptr, SHT_rv)
        ! splicer end function.return_struct_ptr2
    end function return_struct_ptr2

    ! ----------------------------------------
    ! Function:  Cstruct_list * get_global_struct_list +deref(pointer)
    ! Cstruct_list * get_global_struct_list +deref(pointer)
    ! Requested: f_struct_*_result_pointer
    ! Match:     f_struct_*_result
    ! Requested: c_struct_*_result
    ! Match:     c_struct_result
    function get_global_struct_list() &
            result(SHT_rv)
        use iso_c_binding, only : C_PTR, c_f_pointer
        type(cstruct_list), pointer :: SHT_rv
        ! splicer begin function.get_global_struct_list
        type(C_PTR) :: SHT_ptr
        SHT_ptr = c_get_global_struct_list()
        call c_f_pointer(SHT_ptr, SHT_rv)
        ! splicer end function.get_global_struct_list
    end function get_global_struct_list

    ! splicer begin additional_functions
    ! splicer end additional_functions

end module struct_mod
