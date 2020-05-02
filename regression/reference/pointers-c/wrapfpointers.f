! wrapfpointers.f
! This file is generated by Shroud 0.11.0. Do not edit.
! Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
! other Shroud Project Developers.
! See the top-level COPYRIGHT file for details.
!
! SPDX-License-Identifier: (BSD-3-Clause)
!
!>
!! \file wrapfpointers.f
!! \brief Shroud generated wrapper for pointers library
!<
! splicer begin file_top
! splicer end file_top
module pointers_mod
    ! splicer begin module_use
    ! splicer end module_use
    implicit none

    ! splicer begin module_top
    ! splicer end module_top

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  argin
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  arginout
    ! Requested: c_native_*_inout
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  argout
    ! Requested: c_native_*_out
    ! Match:     c_default
    ! start intargs
    interface
        subroutine intargs(argin, arginout, argout) &
                bind(C, name="intargs")
            use iso_c_binding, only : C_INT
            implicit none
            integer(C_INT), value, intent(IN) :: argin
            integer(C_INT), intent(INOUT) :: arginout
            integer(C_INT), intent(OUT) :: argout
        end subroutine intargs
    end interface
    ! end intargs

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  in
    ! Requested: c_native_*_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  out
    ! Requested: c_native_*_out
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  sizein
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! start c_cos_doubles
    interface
        subroutine c_cos_doubles(in, out, sizein) &
                bind(C, name="cos_doubles")
            use iso_c_binding, only : C_DOUBLE, C_INT
            implicit none
            real(C_DOUBLE), intent(IN) :: in(*)
            real(C_DOUBLE), intent(OUT) :: out(*)
            integer(C_INT), value, intent(IN) :: sizein
        end subroutine c_cos_doubles
    end interface
    ! end c_cos_doubles

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  in
    ! Requested: c_native_*_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  out
    ! Requested: c_native_*_out
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  sizein
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! start c_truncate_to_int
    interface
        subroutine c_truncate_to_int(in, out, sizein) &
                bind(C, name="truncate_to_int")
            use iso_c_binding, only : C_DOUBLE, C_INT
            implicit none
            real(C_DOUBLE), intent(IN) :: in(*)
            integer(C_INT), intent(OUT) :: out(*)
            integer(C_INT), value, intent(IN) :: sizein
        end subroutine c_truncate_to_int
    end interface
    ! end c_truncate_to_int

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  nvalues
    ! Requested: c_native_*_out
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  values
    ! Requested: c_native_*_out
    ! Match:     c_default
    ! start get_values
    interface
        subroutine get_values(nvalues, values) &
                bind(C, name="get_values")
            use iso_c_binding, only : C_INT
            implicit none
            integer(C_INT), intent(OUT) :: nvalues
            integer(C_INT), intent(OUT) :: values(*)
        end subroutine get_values
    end interface
    ! end get_values

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  arg1
    ! Requested: c_native_*_out
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  arg2
    ! Requested: c_native_*_out
    ! Match:     c_default
    ! start get_values2
    interface
        subroutine get_values2(arg1, arg2) &
                bind(C, name="get_values2")
            use iso_c_binding, only : C_INT
            implicit none
            integer(C_INT), intent(OUT) :: arg1(*)
            integer(C_INT), intent(OUT) :: arg2(*)
        end subroutine get_values2
    end interface
    ! end get_values2

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  nvar
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  values
    ! Requested: c_native_*_out
    ! Match:     c_default
    ! start iota_allocatable
    interface
        subroutine iota_allocatable(nvar, values) &
                bind(C, name="iota_allocatable")
            use iso_c_binding, only : C_INT
            implicit none
            integer(C_INT), value, intent(IN) :: nvar
            integer(C_INT), intent(OUT) :: values(*)
        end subroutine iota_allocatable
    end interface
    ! end iota_allocatable

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  nvar
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  values
    ! Requested: c_native_*_out
    ! Match:     c_default
    ! start iota_dimension
    interface
        subroutine iota_dimension(nvar, values) &
                bind(C, name="iota_dimension")
            use iso_c_binding, only : C_INT
            implicit none
            integer(C_INT), value, intent(IN) :: nvar
            integer(C_INT), intent(OUT) :: values(*)
        end subroutine iota_dimension
    end interface
    ! end iota_dimension

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  len
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  values
    ! Requested: c_native_*_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  result
    ! Requested: c_native_*_out
    ! Match:     c_default
    ! start c_sum
    interface
        subroutine c_sum(len, values, result) &
                bind(C, name="Sum")
            use iso_c_binding, only : C_INT
            implicit none
            integer(C_INT), value, intent(IN) :: len
            integer(C_INT), intent(IN) :: values(*)
            integer(C_INT), intent(OUT) :: result
        end subroutine c_sum
    end interface
    ! end c_sum

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  out
    ! Requested: c_native_*_out
    ! Match:     c_default
    ! start fill_int_array
    interface
        subroutine fill_int_array(out) &
                bind(C, name="fillIntArray")
            use iso_c_binding, only : C_INT
            implicit none
            integer(C_INT), intent(OUT) :: out(*)
        end subroutine fill_int_array
    end interface
    ! end fill_int_array

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  array
    ! Requested: c_native_*_inout
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  sizein
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! start c_increment_int_array
    interface
        subroutine c_increment_int_array(array, sizein) &
                bind(C, name="incrementIntArray")
            use iso_c_binding, only : C_INT
            implicit none
            integer(C_INT), intent(INOUT) :: array(*)
            integer(C_INT), value, intent(IN) :: sizein
        end subroutine c_increment_int_array
    end interface
    ! end c_increment_int_array

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  names
    ! Requested: c_char_**_in
    ! Match:     c_default
    ! start c_accept_char_array_in
    interface
        subroutine c_accept_char_array_in(names) &
                bind(C, name="acceptCharArrayIn")
            use iso_c_binding, only : C_PTR
            implicit none
            type(C_PTR), intent(IN) :: names
        end subroutine c_accept_char_array_in
    end interface
    ! end c_accept_char_array_in

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_scalar_result_buf
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  names
    ! Exact:     c_char_**_in_buf
    ! start c_accept_char_array_in_bufferify
    interface
        subroutine c_accept_char_array_in_bufferify(names, Snames, &
                Nnames) &
                bind(C, name="POI_accept_char_array_in_bufferify")
            use iso_c_binding, only : C_CHAR, C_INT, C_LONG
            implicit none
            character(kind=C_CHAR), intent(IN) :: names(*)
            integer(C_LONG), value, intent(IN) :: Snames
            integer(C_INT), value, intent(IN) :: Nnames
        end subroutine c_accept_char_array_in_bufferify
    end interface
    ! end c_accept_char_array_in_bufferify

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  value
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! start set_global_int
    interface
        subroutine set_global_int(value) &
                bind(C, name="setGlobalInt")
            use iso_c_binding, only : C_INT
            implicit none
            integer(C_INT), value, intent(IN) :: value
        end subroutine set_global_int
    end interface
    ! end set_global_int

    ! ----------------------------------------
    ! Result
    ! Requested: c_native_scalar_result
    ! Match:     c_default
    ! start sum_fixed_array
    interface
        function sum_fixed_array() &
                result(SHT_rv) &
                bind(C, name="sumFixedArray")
            use iso_c_binding, only : C_INT
            implicit none
            integer(C_INT) :: SHT_rv
        end function sum_fixed_array
    end interface
    ! end sum_fixed_array

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  nitems
    ! Requested: c_native_**_out
    ! Match:     c_default
    ! start c_get_ptr_to_scalar
    interface
        subroutine c_get_ptr_to_scalar(nitems) &
                bind(C, name="getPtrToScalar")
            use iso_c_binding, only : C_PTR
            implicit none
            type(C_PTR), intent(OUT) :: nitems
        end subroutine c_get_ptr_to_scalar
    end interface
    ! end c_get_ptr_to_scalar

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  count
    ! Requested: c_native_**_out
    ! Match:     c_default
    ! start c_get_ptr_to_fixed_array
    interface
        subroutine c_get_ptr_to_fixed_array(count) &
                bind(C, name="getPtrToFixedArray")
            use iso_c_binding, only : C_PTR
            implicit none
            type(C_PTR), intent(OUT) :: count
        end subroutine c_get_ptr_to_fixed_array
    end interface
    ! end c_get_ptr_to_fixed_array

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  count
    ! Requested: c_native_**_out
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  ncount
    ! Requested: c_native_*_out
    ! Match:     c_default
    ! start c_get_ptr_to_dynamic_array
    interface
        subroutine c_get_ptr_to_dynamic_array(count, ncount) &
                bind(C, name="getPtrToDynamicArray")
            use iso_c_binding, only : C_INT, C_PTR
            implicit none
            type(C_PTR), intent(OUT) :: count
            integer(C_INT), intent(OUT) :: ncount
        end subroutine c_get_ptr_to_dynamic_array
    end interface
    ! end c_get_ptr_to_dynamic_array

    ! ----------------------------------------
    ! Result
    ! Requested: c_native_scalar_result
    ! Match:     c_default
    ! start get_len
    interface
        function get_len() &
                result(SHT_rv) &
                bind(C, name="getLen")
            use iso_c_binding, only : C_INT
            implicit none
            integer(C_INT) :: SHT_rv
        end function get_len
    end interface
    ! end get_len

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  count
    ! Requested: c_native_**_out
    ! Match:     c_default
    ! start c_get_ptr_to_func_array
    interface
        subroutine c_get_ptr_to_func_array(count) &
                bind(C, name="getPtrToFuncArray")
            use iso_c_binding, only : C_PTR
            implicit none
            type(C_PTR), intent(OUT) :: count
        end subroutine c_get_ptr_to_func_array
    end interface
    ! end c_get_ptr_to_func_array

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  nitems
    ! Requested: c_native_**_out_raw
    ! Match:     c_default
    ! start get_raw_ptr_to_scalar
    interface
        subroutine get_raw_ptr_to_scalar(nitems) &
                bind(C, name="getRawPtrToScalar")
            use iso_c_binding, only : C_PTR
            implicit none
            type(C_PTR), intent(OUT) :: nitems
        end subroutine get_raw_ptr_to_scalar
    end interface
    ! end get_raw_ptr_to_scalar

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  count
    ! Requested: c_native_**_out_raw
    ! Match:     c_default
    ! start get_raw_ptr_to_fixed_array
    interface
        subroutine get_raw_ptr_to_fixed_array(count) &
                bind(C, name="getRawPtrToFixedArray")
            use iso_c_binding, only : C_PTR
            implicit none
            type(C_PTR), intent(OUT) :: count
        end subroutine get_raw_ptr_to_fixed_array
    end interface
    ! end get_raw_ptr_to_fixed_array

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_*_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  flag
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! start return_address1
    interface
        function return_address1(flag) &
                result(SHT_rv) &
                bind(C, name="returnAddress1")
            use iso_c_binding, only : C_INT, C_PTR
            implicit none
            integer(C_INT), value, intent(IN) :: flag
            type(C_PTR) :: SHT_rv
        end function return_address1
    end interface
    ! end return_address1

    ! ----------------------------------------
    ! Result
    ! Requested: c_unknown_*_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  flag
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! start c_return_address2
    interface
        function c_return_address2(flag) &
                result(SHT_rv) &
                bind(C, name="returnAddress2")
            use iso_c_binding, only : C_INT, C_PTR
            implicit none
            integer(C_INT), value, intent(IN) :: flag
            type(C_PTR) :: SHT_rv
        end function c_return_address2
    end interface
    ! end c_return_address2

    ! ----------------------------------------
    ! Result
    ! Requested: c_native_*_result
    ! Match:     c_default
    ! start c_return_int_ptr_to_scalar
    interface
        function c_return_int_ptr_to_scalar() &
                result(SHT_rv) &
                bind(C, name="returnIntPtrToScalar")
            use iso_c_binding, only : C_PTR
            implicit none
            type(C_PTR) SHT_rv
        end function c_return_int_ptr_to_scalar
    end interface
    ! end c_return_int_ptr_to_scalar

    ! ----------------------------------------
    ! Result
    ! Requested: c_native_*_result
    ! Match:     c_default
    ! start c_return_int_ptr_to_fixed_array
    interface
        function c_return_int_ptr_to_fixed_array() &
                result(SHT_rv) &
                bind(C, name="returnIntPtrToFixedArray")
            use iso_c_binding, only : C_PTR
            implicit none
            type(C_PTR) SHT_rv
        end function c_return_int_ptr_to_fixed_array
    end interface
    ! end c_return_int_ptr_to_fixed_array

    interface
        ! splicer begin additional_interfaces
        ! splicer end additional_interfaces
    end interface

contains

    ! void cos_doubles(double * in +intent(in)+rank(1), double * out +allocatable(mold=in)+intent(out), int sizein +implied(size(in))+intent(in)+value)
    ! ----------------------------------------
    ! Result
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  in
    ! Requested: f_native_*_in
    ! Match:     f_default
    ! Requested: c_native_*_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  out
    ! Requested: f_native_*_out
    ! Match:     f_default
    ! Requested: c_native_*_out
    ! Match:     c_default
    !>
    !! \brief compute cos of IN and save in OUT
    !!
    !! allocate OUT same type as IN implied size of array
    !<
    ! start cos_doubles
    subroutine cos_doubles(in, out)
        use iso_c_binding, only : C_DOUBLE, C_INT
        real(C_DOUBLE), intent(IN) :: in(:)
        real(C_DOUBLE), intent(OUT), allocatable :: out(:)
        integer(C_INT) :: SH_sizein
        ! splicer begin function.cos_doubles
        allocate(out(lbound(in,1):ubound(in,1)))
        SH_sizein = size(in,kind=C_INT)
        call c_cos_doubles(in, out, SH_sizein)
        ! splicer end function.cos_doubles
    end subroutine cos_doubles
    ! end cos_doubles

    ! void truncate_to_int(double * in +intent(in)+rank(1), int * out +allocatable(mold=in)+intent(out), int sizein +implied(size(in))+intent(in)+value)
    ! ----------------------------------------
    ! Result
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  in
    ! Requested: f_native_*_in
    ! Match:     f_default
    ! Requested: c_native_*_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  out
    ! Requested: f_native_*_out
    ! Match:     f_default
    ! Requested: c_native_*_out
    ! Match:     c_default
    !>
    !! \brief truncate IN argument and save in OUT
    !!
    !! allocate OUT different type as IN
    !! implied size of array
    !<
    ! start truncate_to_int
    subroutine truncate_to_int(in, out)
        use iso_c_binding, only : C_DOUBLE, C_INT
        real(C_DOUBLE), intent(IN) :: in(:)
        integer(C_INT), intent(OUT), allocatable :: out(:)
        integer(C_INT) :: SH_sizein
        ! splicer begin function.truncate_to_int
        allocate(out(lbound(in,1):ubound(in,1)))
        SH_sizein = size(in,kind=C_INT)
        call c_truncate_to_int(in, out, SH_sizein)
        ! splicer end function.truncate_to_int
    end subroutine truncate_to_int
    ! end truncate_to_int

    ! void Sum(int len +implied(size(values))+intent(in)+value, int * values +intent(in)+rank(1), int * result +intent(out))
    ! ----------------------------------------
    ! Result
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  values
    ! Requested: f_native_*_in
    ! Match:     f_default
    ! Requested: c_native_*_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  result
    ! Requested: f_native_*_out
    ! Match:     f_default
    ! Requested: c_native_*_out
    ! Match:     c_default
    ! start sum
    subroutine sum(values, result)
        use iso_c_binding, only : C_INT
        integer(C_INT) :: SH_len
        integer(C_INT), intent(IN) :: values(:)
        integer(C_INT), intent(OUT) :: result
        ! splicer begin function.sum
        SH_len = size(values,kind=C_INT)
        call c_sum(SH_len, values, result)
        ! splicer end function.sum
    end subroutine sum
    ! end sum

    ! void incrementIntArray(int * array +intent(inout)+rank(1), int sizein +implied(size(array))+intent(in)+value)
    ! ----------------------------------------
    ! Result
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  array
    ! Requested: f_native_*_inout
    ! Match:     f_default
    ! Requested: c_native_*_inout
    ! Match:     c_default
    !>
    !! Increment array in place using intent(INOUT).
    !<
    ! start increment_int_array
    subroutine increment_int_array(array)
        use iso_c_binding, only : C_INT
        integer(C_INT), intent(INOUT) :: array(:)
        integer(C_INT) :: SH_sizein
        ! splicer begin function.increment_int_array
        SH_sizein = size(array,kind=C_INT)
        call c_increment_int_array(array, SH_sizein)
        ! splicer end function.increment_int_array
    end subroutine increment_int_array
    ! end increment_int_array

    ! void acceptCharArrayIn(char * * names +intent(in)+rank(1))
    ! arg_to_buffer
    ! ----------------------------------------
    ! Result
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  names
    ! Requested: f_char_**_in
    ! Match:     f_default
    ! Exact:     c_char_**_in_buf
    ! start accept_char_array_in
    subroutine accept_char_array_in(names)
        use iso_c_binding, only : C_INT, C_LONG
        character(len=*), intent(IN) :: names(:)
        ! splicer begin function.accept_char_array_in
        call c_accept_char_array_in_bufferify(names, &
            size(names, kind=C_LONG), len(names, kind=C_INT))
        ! splicer end function.accept_char_array_in
    end subroutine accept_char_array_in
    ! end accept_char_array_in

    ! void getPtrToScalar(int * * nitems +intent(out))
    ! ----------------------------------------
    ! Result
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  nitems
    ! Exact:     f_native_**_out
    ! Requested: c_native_**_out
    ! Match:     c_default
    ! start get_ptr_to_scalar
    subroutine get_ptr_to_scalar(nitems)
        use iso_c_binding, only : C_INT, C_PTR, c_f_pointer
        integer(C_INT), intent(OUT), pointer :: nitems
        ! splicer begin function.get_ptr_to_scalar
        type(C_PTR) :: SHPTR_nitems
        call c_get_ptr_to_scalar(SHPTR_nitems)
        call c_f_pointer(SHPTR_nitems, nitems)
        ! splicer end function.get_ptr_to_scalar
    end subroutine get_ptr_to_scalar
    ! end get_ptr_to_scalar

    ! void getPtrToFixedArray(int * * count +dimension(10)+intent(out))
    ! ----------------------------------------
    ! Result
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  count
    ! Exact:     f_native_**_out
    ! Requested: c_native_**_out
    ! Match:     c_default
    !>
    !! Return a Fortran pointer to an array which is always the same length.
    !<
    ! start get_ptr_to_fixed_array
    subroutine get_ptr_to_fixed_array(count)
        use iso_c_binding, only : C_INT, C_PTR, c_f_pointer
        integer(C_INT), intent(OUT), pointer :: count(:)
        ! splicer begin function.get_ptr_to_fixed_array
        type(C_PTR) :: SHPTR_count
        call c_get_ptr_to_fixed_array(SHPTR_count)
        call c_f_pointer(SHPTR_count, count, [10])
        ! splicer end function.get_ptr_to_fixed_array
    end subroutine get_ptr_to_fixed_array
    ! end get_ptr_to_fixed_array

    ! void getPtrToDynamicArray(int * * count +dimension(ncount)+intent(out), int * ncount +hidden+intent(out))
    ! ----------------------------------------
    ! Result
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  count
    ! Exact:     f_native_**_out
    ! Requested: c_native_**_out
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  ncount
    ! Requested: f_native_*_out
    ! Match:     f_default
    ! Requested: c_native_*_out
    ! Match:     c_default
    !>
    !! Return a Fortran pointer to an array which is the length of
    !! the argument ncount.
    !<
    ! start get_ptr_to_dynamic_array
    subroutine get_ptr_to_dynamic_array(count)
        use iso_c_binding, only : C_INT, C_PTR, c_f_pointer
        integer(C_INT), intent(OUT), pointer :: count(:)
        integer(C_INT) :: ncount
        ! splicer begin function.get_ptr_to_dynamic_array
        type(C_PTR) :: SHPTR_count
        call c_get_ptr_to_dynamic_array(SHPTR_count, ncount)
        call c_f_pointer(SHPTR_count, count, [ncount])
        ! splicer end function.get_ptr_to_dynamic_array
    end subroutine get_ptr_to_dynamic_array
    ! end get_ptr_to_dynamic_array

    ! void getPtrToFuncArray(int * * count +dimension(getLen())+intent(out))
    ! ----------------------------------------
    ! Result
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  count
    ! Exact:     f_native_**_out
    ! Requested: c_native_**_out
    ! Match:     c_default
    !>
    !! Return a Fortran pointer to an array which is the length
    !! is computed by C++ function getLen.
    !! getLen will be called from C/C++ to compute the shape.
    !! Note that getLen will be wrapped in Fortran as get_len.
    !<
    ! start get_ptr_to_func_array
    subroutine get_ptr_to_func_array(count)
        use iso_c_binding, only : C_INT, C_PTR, c_f_pointer
        integer(C_INT), intent(OUT), pointer :: count(:)
        ! splicer begin function.get_ptr_to_func_array
        integer(C_INT) :: SHAPE_count(1)
        interface
            subroutine SHROUD_get_shape_count(shape) &
                bind(C, name="POI_SHROUD_create_f_pointer_shape_0")
                use iso_c_binding, only : C_INT
                implicit none
                integer(C_INT), intent(OUT) :: shape(*)
            end subroutine SHROUD_get_shape_count
        end interface
        type(C_PTR) :: SHPTR_count
        call c_get_ptr_to_func_array(SHPTR_count)
        call SHROUD_get_shape_count(SHAPE_count)
        call c_f_pointer(SHPTR_count, count, SHAPE_count)
        ! splicer end function.get_ptr_to_func_array
    end subroutine get_ptr_to_func_array
    ! end get_ptr_to_func_array

    ! void * returnAddress2(int flag +intent(in)+value)
    ! ----------------------------------------
    ! Result
    ! Exact:     f_unknown_*_result
    ! Requested: c_unknown_*_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  flag
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! start return_address2
    function return_address2(flag) &
            result(SHT_rv)
        use iso_c_binding, only : C_INT, C_PTR
        integer(C_INT), value, intent(IN) :: flag
        type(C_PTR) :: SHT_rv
        ! splicer begin function.return_address2
        SHT_rv = c_return_address2(flag)
        ! splicer end function.return_address2
    end function return_address2
    ! end return_address2

    ! int * returnIntPtrToScalar()
    ! ----------------------------------------
    ! Result
    ! Exact:     f_native_*_result
    ! Requested: c_native_*_result
    ! Match:     c_default
    ! start return_int_ptr_to_scalar
    function return_int_ptr_to_scalar() &
            result(SHT_rv)
        use iso_c_binding, only : C_INT, C_PTR, c_f_pointer
        integer(C_INT), pointer :: SHT_rv
        ! splicer begin function.return_int_ptr_to_scalar
        type(C_PTR) :: SHT_ptr
        SHT_ptr = c_return_int_ptr_to_scalar()
        call c_f_pointer(SHT_ptr, SHT_rv)
        ! splicer end function.return_int_ptr_to_scalar
    end function return_int_ptr_to_scalar
    ! end return_int_ptr_to_scalar

    ! int * returnIntPtrToFixedArray() +dimension(10)
    ! ----------------------------------------
    ! Result
    ! Exact:     f_native_*_result
    ! Requested: c_native_*_result
    ! Match:     c_default
    ! start return_int_ptr_to_fixed_array
    function return_int_ptr_to_fixed_array() &
            result(SHT_rv)
        use iso_c_binding, only : C_INT, C_PTR, c_f_pointer
        integer(C_INT), pointer :: SHT_rv(:)
        ! splicer begin function.return_int_ptr_to_fixed_array
        type(C_PTR) :: SHT_ptr
        SHT_ptr = c_return_int_ptr_to_fixed_array()
        call c_f_pointer(SHT_ptr, SHT_rv, [10])
        ! splicer end function.return_int_ptr_to_fixed_array
    end function return_int_ptr_to_fixed_array
    ! end return_int_ptr_to_fixed_array

    ! splicer begin additional_functions
    ! splicer end additional_functions

end module pointers_mod
