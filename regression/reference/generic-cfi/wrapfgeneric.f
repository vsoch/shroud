! wrapfgeneric.f
! This file is generated by Shroud nowrite-version. Do not edit.
! Copyright (c) 2017-2021, Lawrence Livermore National Security, LLC and
! other Shroud Project Developers.
! See the top-level COPYRIGHT file for details.
!
! SPDX-License-Identifier: (BSD-3-Clause)
!
!>
!! \file wrapfgeneric.f
!! \brief Shroud generated wrapper for generic library
!<
! splicer begin file_top
! splicer end file_top
module generic_mod
    ! splicer begin module_use
    ! splicer end module_use
    implicit none

    ! splicer begin module_top
    integer, parameter :: T_INT = 1
    integer, parameter :: T_LONG = 2
    integer, parameter :: T_FLOAT = 3
    integer, parameter :: T_DOUBLE = 4
    ! splicer end module_top

    ! helper ShroudTypeDefines
    ! Shroud type defines from helper ShroudTypeDefines
    integer, parameter, private :: &
        SH_TYPE_SIGNED_CHAR= 1, &
        SH_TYPE_SHORT      = 2, &
        SH_TYPE_INT        = 3, &
        SH_TYPE_LONG       = 4, &
        SH_TYPE_LONG_LONG  = 5, &
        SH_TYPE_SIZE_T     = 6, &
        SH_TYPE_UNSIGNED_SHORT      = SH_TYPE_SHORT + 100, &
        SH_TYPE_UNSIGNED_INT        = SH_TYPE_INT + 100, &
        SH_TYPE_UNSIGNED_LONG       = SH_TYPE_LONG + 100, &
        SH_TYPE_UNSIGNED_LONG_LONG  = SH_TYPE_LONG_LONG + 100, &
        SH_TYPE_INT8_T    =  7, &
        SH_TYPE_INT16_T   =  8, &
        SH_TYPE_INT32_T   =  9, &
        SH_TYPE_INT64_T   = 10, &
        SH_TYPE_UINT8_T  =  SH_TYPE_INT8_T + 100, &
        SH_TYPE_UINT16_T =  SH_TYPE_INT16_T + 100, &
        SH_TYPE_UINT32_T =  SH_TYPE_INT32_T + 100, &
        SH_TYPE_UINT64_T =  SH_TYPE_INT64_T + 100, &
        SH_TYPE_FLOAT       = 22, &
        SH_TYPE_DOUBLE      = 23, &
        SH_TYPE_LONG_DOUBLE = 24, &
        SH_TYPE_FLOAT_COMPLEX      = 25, &
        SH_TYPE_DOUBLE_COMPLEX     = 26, &
        SH_TYPE_LONG_DOUBLE_COMPLEX= 27, &
        SH_TYPE_BOOL      = 28, &
        SH_TYPE_CHAR      = 29, &
        SH_TYPE_CPTR      = 30, &
        SH_TYPE_STRUCT    = 31, &
        SH_TYPE_OTHER     = 32

    ! ----------------------------------------
    ! Function:  void UpdateAsFloat
    ! Requested: c_void_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  float arg +value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    interface
        subroutine c_update_as_float(arg) &
                bind(C, name="UpdateAsFloat")
            use iso_c_binding, only : C_FLOAT
            implicit none
            real(C_FLOAT), value, intent(IN) :: arg
        end subroutine c_update_as_float
    end interface

    ! ----------------------------------------
    ! Function:  void UpdateAsDouble
    ! Requested: c_void_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  double arg +value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    interface
        subroutine c_update_as_double(arg) &
                bind(C, name="UpdateAsDouble")
            use iso_c_binding, only : C_DOUBLE
            implicit none
            real(C_DOUBLE), value, intent(IN) :: arg
        end subroutine c_update_as_double
    end interface

    ! ----------------------------------------
    ! Function:  double GetGlobalDouble
    ! Attrs:     +intent(result)
    ! Requested: c_native_scalar_result
    ! Match:     c_default
    interface
        function get_global_double() &
                result(SHT_rv) &
                bind(C, name="GetGlobalDouble")
            use iso_c_binding, only : C_DOUBLE
            implicit none
            real(C_DOUBLE) :: SHT_rv
        end function get_global_double
    end interface

    ! ----------------------------------------
    ! Function:  void GenericReal
    ! Requested: c_void_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  double arg +value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! start c_generic_real
    interface
        subroutine c_generic_real(arg) &
                bind(C, name="GenericReal")
            use iso_c_binding, only : C_DOUBLE
            implicit none
            real(C_DOUBLE), value, intent(IN) :: arg
        end subroutine c_generic_real
    end interface
    ! end c_generic_real

    ! ----------------------------------------
    ! Function:  long GenericReal2
    ! Attrs:     +intent(result)
    ! Requested: c_native_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  long arg1 +value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  long arg2 +value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    interface
        function c_generic_real2(arg1, arg2) &
                result(SHT_rv) &
                bind(C, name="GenericReal2")
            use iso_c_binding, only : C_LONG
            implicit none
            integer(C_LONG), value, intent(IN) :: arg1
            integer(C_LONG), value, intent(IN) :: arg2
            integer(C_LONG) :: SHT_rv
        end function c_generic_real2
    end interface

    ! ----------------------------------------
    ! Function:  int SumValues
    ! Attrs:     +intent(result)
    ! Requested: c_native_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  const int * values +dimension(..)
    ! Attrs:     +assumed-rank+intent(in)
    ! Requested: c_native_*_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int nvalues +value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    interface
        function c_sum_values(values, nvalues) &
                result(SHT_rv) &
                bind(C, name="SumValues")
            use iso_c_binding, only : C_INT
            implicit none
            integer(C_INT), intent(IN) :: values(*)
            integer(C_INT), value, intent(IN) :: nvalues
            integer(C_INT) :: SHT_rv
        end function c_sum_values
    end interface

    ! ----------------------------------------
    ! Function:  int SumValues
    ! Attrs:     +intent(result)
    ! Requested: c_native_scalar_result_cfi
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  const int * values +dimension(..)
    ! Attrs:     +assumed-rank+intent(in)
    ! Exact:     c_native_*_in_cfi
    ! ----------------------------------------
    ! Argument:  int nvalues +value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    interface
        function sum_values(values, nvalues) &
                result(SHT_rv) &
                bind(C, name="GEN_sum_values_CFI")
            use iso_c_binding, only : C_INT
            implicit none
            integer(C_INT), intent(IN) :: values(..)
            integer(C_INT), value, intent(IN) :: nvalues
            integer(C_INT) :: SHT_rv
        end function sum_values
    end interface

    ! ----------------------------------------
    ! Function:  void AssignValues
    ! Requested: c_void_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  const int * from
    ! Attrs:     +intent(in)
    ! Requested: c_native_*_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int nfrom +value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int * to
    ! Attrs:     +intent(inout)
    ! Requested: c_native_*_inout
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int nto +value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    interface
        subroutine c_assign_values(from, nfrom, to, nto) &
                bind(C, name="AssignValues")
            use iso_c_binding, only : C_INT
            implicit none
            integer(C_INT), intent(IN) :: from
            integer(C_INT), value, intent(IN) :: nfrom
            integer(C_INT), intent(INOUT) :: to
            integer(C_INT), value, intent(IN) :: nto
        end subroutine c_assign_values
    end interface

    ! ----------------------------------------
    ! Function:  void AssignValues
    ! Requested: c_void_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  const int * from
    ! Attrs:     +intent(in)
    ! Requested: c_native_*_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int nfrom +value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int * to +rank(1)
    ! Attrs:     +intent(inout)
    ! Requested: c_native_*_inout
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int nto +value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    interface
        subroutine c_assign_values_broadcast(from, nfrom, to, nto) &
                bind(C, name="AssignValues")
            use iso_c_binding, only : C_INT
            implicit none
            integer(C_INT), intent(IN) :: from
            integer(C_INT), value, intent(IN) :: nfrom
            integer(C_INT), intent(INOUT) :: to(*)
            integer(C_INT), value, intent(IN) :: nto
        end subroutine c_assign_values_broadcast
    end interface

    ! ----------------------------------------
    ! Function:  void AssignValues
    ! Requested: c_void_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  const int * from +rank(1)
    ! Attrs:     +intent(in)
    ! Requested: c_native_*_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int nfrom +value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int * to +rank(1)
    ! Attrs:     +intent(inout)
    ! Requested: c_native_*_inout
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int nto +value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    interface
        subroutine c_assign_values_copy(from, nfrom, to, nto) &
                bind(C, name="AssignValues")
            use iso_c_binding, only : C_INT
            implicit none
            integer(C_INT), intent(IN) :: from(*)
            integer(C_INT), value, intent(IN) :: nfrom
            integer(C_INT), intent(INOUT) :: to(*)
            integer(C_INT), value, intent(IN) :: nto
        end subroutine c_assign_values_copy
    end interface

#if 1
    ! ----------------------------------------
    ! Function:  void SavePointer
    ! Requested: c_void_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  void * addr +value
    ! Attrs:     +intent(in)
    ! Requested: c_void_*_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int type +value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  size_t size +implied(size(addr))+value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    interface
        subroutine c_save_pointer(addr, type, size) &
                bind(C, name="SavePointer")
            use iso_c_binding, only : C_INT, C_PTR, C_SIZE_T
            implicit none
            type(C_PTR), value, intent(IN) :: addr
            integer(C_INT), value, intent(IN) :: type
            integer(C_SIZE_T), value, intent(IN) :: size
        end subroutine c_save_pointer
    end interface
#endif

    ! ----------------------------------------
    ! Function:  void SavePointer2
    ! Requested: c_void_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  void * addr +value
    ! Attrs:     +intent(in)
    ! Requested: c_void_*_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int type +implied(type(addr))+value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  size_t size +implied(size(addr))+value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    interface
        subroutine c_save_pointer2(addr, type, size) &
                bind(C, name="GEN_save_pointer2")
            use iso_c_binding, only : C_INT, C_PTR, C_SIZE_T
            implicit none
            type(C_PTR), value, intent(IN) :: addr
            integer(C_INT), value, intent(IN) :: type
            integer(C_SIZE_T), value, intent(IN) :: size
        end subroutine c_save_pointer2
    end interface

    ! ----------------------------------------
    ! Function:  void GetPointer
    ! Requested: c_void_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  void * * addr +intent(out)
    ! Attrs:     +intent(out)
    ! Requested: c_void_**_out
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int * type +intent(out)
    ! Attrs:     +intent(out)
    ! Requested: c_native_*_out
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  size_t * size +intent(out)
    ! Attrs:     +intent(out)
    ! Requested: c_native_*_out
    ! Match:     c_default
    interface
        subroutine get_pointer(addr, type, size) &
                bind(C, name="GetPointer")
            use iso_c_binding, only : C_INT, C_PTR, C_SIZE_T
            implicit none
            type(C_PTR), intent(OUT) :: addr
            integer(C_INT), intent(OUT) :: type
            integer(C_SIZE_T), intent(OUT) :: size
        end subroutine get_pointer
    end interface

#if 0
    ! ----------------------------------------
    ! Function:  void GetPointerAsPointer
    ! Requested: c_void_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  void * * addr +context(FIXME)+intent(out)
    ! Attrs:     +intent(out)
    ! Requested: c_void_**_out
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int * type +hidden+intent(out)
    ! Attrs:     +intent(out)
    ! Requested: c_native_*_out
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  size_t * size +hidden+intent(out)
    ! Attrs:     +intent(out)
    ! Requested: c_native_*_out
    ! Match:     c_default
    interface
        subroutine c_get_pointer_as_pointer(addr, type, size) &
                bind(C, name="GetPointerAsPointer")
            use iso_c_binding, only : C_INT, C_PTR, C_SIZE_T
            implicit none
            type(C_PTR), intent(OUT) :: addr
            integer(C_INT), intent(OUT) :: type
            integer(C_SIZE_T), intent(OUT) :: size
        end subroutine c_get_pointer_as_pointer
    end interface
#endif

    interface
        ! splicer begin additional_interfaces
        ! splicer end additional_interfaces
    end interface

    interface assign_values
        module procedure assign_values_scalar
        module procedure assign_values_broadcast
        module procedure assign_values_copy
    end interface assign_values

    ! start generic interface generic_real
    interface generic_real
        module procedure generic_real_float
        module procedure generic_real_double
    end interface generic_real
    ! end generic interface generic_real

    interface generic_real2
        module procedure generic_real2_all_int
        module procedure generic_real2_all_long
    end interface generic_real2

#if 0
    interface get_pointer_as_pointer
        module procedure get_pointer_as_pointer_float1d
        module procedure get_pointer_as_pointer_float2d
    end interface get_pointer_as_pointer
#endif

#if 1
    interface save_pointer
        module procedure save_pointer_float1d
        module procedure save_pointer_float2d
    end interface save_pointer
#endif

    interface save_pointer2
        module procedure save_pointer2_float1d
        module procedure save_pointer2_float2d
    end interface save_pointer2

    interface update_real
        module procedure update_as_float
        module procedure update_as_double
    end interface update_real

contains

    ! ----------------------------------------
    ! Function:  void UpdateAsFloat
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  float arg +value
    ! Attrs:     +intent(in)
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    subroutine update_as_float(arg)
        use iso_c_binding, only : C_FLOAT
        real(C_FLOAT), value, intent(IN) :: arg
        ! splicer begin function.update_as_float
        call c_update_as_float(arg)
        ! splicer end function.update_as_float
    end subroutine update_as_float

    ! ----------------------------------------
    ! Function:  void UpdateAsDouble
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  double arg +value
    ! Attrs:     +intent(in)
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    subroutine update_as_double(arg)
        use iso_c_binding, only : C_DOUBLE
        real(C_DOUBLE), value, intent(IN) :: arg
        ! splicer begin function.update_as_double
        call c_update_as_double(arg)
        ! splicer end function.update_as_double
    end subroutine update_as_double

    ! Generated by fortran_generic
    ! ----------------------------------------
    ! Function:  void GenericReal
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  float arg +value
    ! Attrs:     +intent(in)
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Argument:  double arg +value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    !>
    !! \brief Single argument generic
    !!
    !<
    ! start generic_real_float
    subroutine generic_real_float(arg)
        use iso_c_binding, only : C_DOUBLE, C_FLOAT
        real(C_FLOAT), value, intent(IN) :: arg
        ! splicer begin function.generic_real_float
        call c_generic_real(real(arg, C_DOUBLE))
        ! splicer end function.generic_real_float
    end subroutine generic_real_float
    ! end generic_real_float

    ! Generated by fortran_generic
    ! ----------------------------------------
    ! Function:  void GenericReal
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  double arg +value
    ! Attrs:     +intent(in)
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    !>
    !! \brief Single argument generic
    !!
    !<
    ! start generic_real_double
    subroutine generic_real_double(arg)
        use iso_c_binding, only : C_DOUBLE
        real(C_DOUBLE), value, intent(IN) :: arg
        ! splicer begin function.generic_real_double
        call c_generic_real(arg)
        ! splicer end function.generic_real_double
    end subroutine generic_real_double
    ! end generic_real_double

    ! Generated by fortran_generic
    ! ----------------------------------------
    ! Function:  long GenericReal2
    ! Attrs:     +intent(result)
    ! Requested: f_native_scalar_result
    ! Match:     f_default
    ! Attrs:     +intent(result)
    ! Requested: c_native_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int arg1 +value
    ! Attrs:     +intent(in)
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Argument:  long arg1 +value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int arg2 +value
    ! Attrs:     +intent(in)
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Argument:  long arg2 +value
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    !>
    !! \brief Two argument generic
    !!
    !! It is not possible to call the function with (int, long)
    !! or (long, int)
    !<
    function generic_real2_all_int(arg1, arg2) &
            result(SHT_rv)
        use iso_c_binding, only : C_INT, C_LONG
        integer(C_INT), value, intent(IN) :: arg1
        integer(C_INT), value, intent(IN) :: arg2
        integer(C_LONG) :: SHT_rv
        ! splicer begin function.generic_real2_all_int
        SHT_rv = c_generic_real2(int(arg1, C_LONG), int(arg2, C_LONG))
        ! splicer end function.generic_real2_all_int
    end function generic_real2_all_int

    ! Generated by fortran_generic
    ! ----------------------------------------
    ! Function:  long GenericReal2
    ! Attrs:     +intent(result)
    ! Requested: f_native_scalar_result
    ! Match:     f_default
    ! Attrs:     +intent(result)
    ! Requested: c_native_scalar_result
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  long arg1 +value
    ! Attrs:     +intent(in)
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  long arg2 +value
    ! Attrs:     +intent(in)
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    !>
    !! \brief Two argument generic
    !!
    !! It is not possible to call the function with (int, long)
    !! or (long, int)
    !<
    function generic_real2_all_long(arg1, arg2) &
            result(SHT_rv)
        use iso_c_binding, only : C_LONG
        integer(C_LONG), value, intent(IN) :: arg1
        integer(C_LONG), value, intent(IN) :: arg2
        integer(C_LONG) :: SHT_rv
        ! splicer begin function.generic_real2_all_long
        SHT_rv = c_generic_real2(arg1, arg2)
        ! splicer end function.generic_real2_all_long
    end function generic_real2_all_long

    ! Generated by fortran_generic
    ! ----------------------------------------
    ! Function:  void AssignValues
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  const int * from
    ! Attrs:     +intent(in)
    ! Requested: f_native_*_in
    ! Match:     f_default
    ! Attrs:     +intent(in)
    ! Requested: c_native_*_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int nfrom +value
    ! Attrs:     +intent(in)
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int * to
    ! Attrs:     +intent(inout)
    ! Requested: f_native_*_inout
    ! Match:     f_default
    ! Attrs:     +intent(inout)
    ! Requested: c_native_*_inout
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int nto +value
    ! Attrs:     +intent(in)
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    !>
    !! Broadcast if nfrom == 1
    !! Copy if nfrom == nto
    !<
    subroutine assign_values_scalar(from, nfrom, to, nto)
        use iso_c_binding, only : C_INT
        integer(C_INT), intent(IN) :: from
        integer(C_INT), value, intent(IN) :: nfrom
        integer(C_INT), intent(INOUT) :: to
        integer(C_INT), value, intent(IN) :: nto
        ! splicer begin function.assign_values_scalar
        call c_assign_values(from, nfrom, to, nto)
        ! splicer end function.assign_values_scalar
    end subroutine assign_values_scalar

    ! Generated by fortran_generic - fortran_generic_c
    ! ----------------------------------------
    ! Function:  void AssignValues
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  const int * from
    ! Attrs:     +intent(in)
    ! Requested: f_native_*_in
    ! Match:     f_default
    ! Attrs:     +intent(in)
    ! Requested: c_native_*_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int nfrom +value
    ! Attrs:     +intent(in)
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int * to +rank(1)
    ! Attrs:     +intent(inout)
    ! Requested: f_native_*_inout
    ! Match:     f_default
    ! Attrs:     +intent(inout)
    ! Requested: c_native_*_inout
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int nto +value
    ! Attrs:     +intent(in)
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    !>
    !! Broadcast if nfrom == 1
    !! Copy if nfrom == nto
    !<
    subroutine assign_values_broadcast(from, nfrom, to, nto)
        use iso_c_binding, only : C_INT
        integer(C_INT), intent(IN) :: from
        integer(C_INT), value, intent(IN) :: nfrom
        integer(C_INT), intent(INOUT) :: to(:)
        integer(C_INT), value, intent(IN) :: nto
        ! splicer begin function.assign_values_broadcast
        call c_assign_values_broadcast(from, nfrom, to, nto)
        ! splicer end function.assign_values_broadcast
    end subroutine assign_values_broadcast

    ! Generated by fortran_generic - fortran_generic_c
    ! ----------------------------------------
    ! Function:  void AssignValues
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  const int * from +rank(1)
    ! Attrs:     +intent(in)
    ! Requested: f_native_*_in
    ! Match:     f_default
    ! Attrs:     +intent(in)
    ! Requested: c_native_*_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int nfrom +value
    ! Attrs:     +intent(in)
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int * to +rank(1)
    ! Attrs:     +intent(inout)
    ! Requested: f_native_*_inout
    ! Match:     f_default
    ! Attrs:     +intent(inout)
    ! Requested: c_native_*_inout
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int nto +value
    ! Attrs:     +intent(in)
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Attrs:     +intent(in)
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    !>
    !! Broadcast if nfrom == 1
    !! Copy if nfrom == nto
    !<
    subroutine assign_values_copy(from, nfrom, to, nto)
        use iso_c_binding, only : C_INT
        integer(C_INT), intent(IN) :: from(:)
        integer(C_INT), value, intent(IN) :: nfrom
        integer(C_INT), intent(INOUT) :: to(:)
        integer(C_INT), value, intent(IN) :: nto
        ! splicer begin function.assign_values_copy
        call c_assign_values_copy(from, nfrom, to, nto)
        ! splicer end function.assign_values_copy
    end subroutine assign_values_copy

#if 1
    ! Generated by fortran_generic
    ! ----------------------------------------
    ! Function:  void SavePointer
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  float * addr +deref(raw)+intent(in)+rank(1)
    ! Attrs:     +deref(raw)+intent(in)
    ! Exact:     f_native_*_in_raw
    ! Argument:  void * addr +value
    ! Attrs:     +intent(in)
    ! Requested: c_void_*_in
    ! Match:     c_default
    subroutine save_pointer_float1d(addr)
        use iso_c_binding, only : C_FLOAT, C_INT, C_LOC, C_SIZE_T
        real(C_FLOAT), intent(IN), target :: addr(:)
        integer(C_INT) :: SH_type
        integer(C_SIZE_T) :: SH_size
        ! splicer begin function.save_pointer_float1d
        SH_type = T_FLOAT
        SH_size = size(addr,kind=C_SIZE_T)
        call c_save_pointer(C_LOC(addr), SH_type, SH_size)
        ! splicer end function.save_pointer_float1d
    end subroutine save_pointer_float1d
#endif

#if 1
    ! Generated by fortran_generic
    ! ----------------------------------------
    ! Function:  void SavePointer
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  float * addr +deref(raw)+intent(in)+rank(2)
    ! Attrs:     +deref(raw)+intent(in)
    ! Exact:     f_native_*_in_raw
    ! Argument:  void * addr +value
    ! Attrs:     +intent(in)
    ! Requested: c_void_*_in
    ! Match:     c_default
    subroutine save_pointer_float2d(addr)
        use iso_c_binding, only : C_FLOAT, C_INT, C_LOC, C_SIZE_T
        real(C_FLOAT), intent(IN), target :: addr(:,:)
        integer(C_INT) :: SH_type
        integer(C_SIZE_T) :: SH_size
        ! splicer begin function.save_pointer_float2d
        SH_type = T_FLOAT
        SH_size = size(addr,kind=C_SIZE_T)
        call c_save_pointer(C_LOC(addr), SH_type, SH_size)
        ! splicer end function.save_pointer_float2d
    end subroutine save_pointer_float2d
#endif

    ! Generated by fortran_generic
    ! ----------------------------------------
    ! Function:  void SavePointer2
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  float * addr +deref(raw)+intent(in)+rank(1)
    ! Attrs:     +deref(raw)+intent(in)
    ! Exact:     f_native_*_in_raw
    ! Argument:  void * addr +value
    ! Attrs:     +intent(in)
    ! Requested: c_void_*_in
    ! Match:     c_default
    subroutine save_pointer2_float1d(addr)
        use iso_c_binding, only : C_FLOAT, C_INT, C_LOC, C_SIZE_T
        real(C_FLOAT), intent(IN), target :: addr(:)
        integer(C_INT) :: SH_type
        integer(C_SIZE_T) :: SH_size
        ! splicer begin function.save_pointer2_float1d
        SH_type = SH_TYPE_FLOAT
        SH_size = size(addr,kind=C_SIZE_T)
        call c_save_pointer2(C_LOC(addr), SH_type, SH_size)
        ! splicer end function.save_pointer2_float1d
    end subroutine save_pointer2_float1d

    ! Generated by fortran_generic
    ! ----------------------------------------
    ! Function:  void SavePointer2
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  float * addr +deref(raw)+intent(in)+rank(2)
    ! Attrs:     +deref(raw)+intent(in)
    ! Exact:     f_native_*_in_raw
    ! Argument:  void * addr +value
    ! Attrs:     +intent(in)
    ! Requested: c_void_*_in
    ! Match:     c_default
    subroutine save_pointer2_float2d(addr)
        use iso_c_binding, only : C_FLOAT, C_INT, C_LOC, C_SIZE_T
        real(C_FLOAT), intent(IN), target :: addr(:,:)
        integer(C_INT) :: SH_type
        integer(C_SIZE_T) :: SH_size
        ! splicer begin function.save_pointer2_float2d
        SH_type = SH_TYPE_FLOAT
        SH_size = size(addr,kind=C_SIZE_T)
        call c_save_pointer2(C_LOC(addr), SH_type, SH_size)
        ! splicer end function.save_pointer2_float2d
    end subroutine save_pointer2_float2d

#if 0
    ! Generated by fortran_generic
    ! ----------------------------------------
    ! Function:  void GetPointerAsPointer
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  float * * addr +deref(pointer)+intent(out)+rank(1)
    ! Attrs:     +deref(pointer)+intent(out)
    ! Requested: f_native_**_out_pointer
    ! Match:     f_native_**_out
    ! Argument:  void * * addr +context(FIXME)+intent(out)
    ! Attrs:     +intent(out)
    ! Requested: c_void_**_out
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int * type +hidden+intent(out)
    ! Attrs:     +intent(out)
    ! Requested: f_native_*_out
    ! Match:     f_default
    ! Attrs:     +intent(out)
    ! Requested: c_native_*_out
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  size_t * size +hidden+intent(out)
    ! Attrs:     +intent(out)
    ! Requested: f_native_*_out
    ! Match:     f_default
    ! Attrs:     +intent(out)
    ! Requested: c_native_*_out
    ! Match:     c_default
    subroutine get_pointer_as_pointer_float1d(addr)
        use iso_c_binding, only : C_FLOAT, C_INT, C_SIZE_T, c_f_pointer
        real(C_FLOAT), intent(OUT), pointer :: addr(:)
        integer(C_INT) :: type
        integer(C_SIZE_T) :: size
        ! splicer begin function.get_pointer_as_pointer_float1d
        call c_get_pointer_as_pointer(addr, type, size)
        call c_f_pointer(FIXME%base_addr, addr)
        ! splicer end function.get_pointer_as_pointer_float1d
    end subroutine get_pointer_as_pointer_float1d
#endif

#if 0
    ! Generated by fortran_generic
    ! ----------------------------------------
    ! Function:  void GetPointerAsPointer
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  float * * addr +deref(pointer)+intent(out)+rank(2)
    ! Attrs:     +deref(pointer)+intent(out)
    ! Requested: f_native_**_out_pointer
    ! Match:     f_native_**_out
    ! Argument:  void * * addr +context(FIXME)+intent(out)
    ! Attrs:     +intent(out)
    ! Requested: c_void_**_out
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int * type +hidden+intent(out)
    ! Attrs:     +intent(out)
    ! Requested: f_native_*_out
    ! Match:     f_default
    ! Attrs:     +intent(out)
    ! Requested: c_native_*_out
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  size_t * size +hidden+intent(out)
    ! Attrs:     +intent(out)
    ! Requested: f_native_*_out
    ! Match:     f_default
    ! Attrs:     +intent(out)
    ! Requested: c_native_*_out
    ! Match:     c_default
    subroutine get_pointer_as_pointer_float2d(addr)
        use iso_c_binding, only : C_FLOAT, C_INT, C_SIZE_T, c_f_pointer
        real(C_FLOAT), intent(OUT), pointer :: addr(:,:)
        integer(C_INT) :: type
        integer(C_SIZE_T) :: size
        ! splicer begin function.get_pointer_as_pointer_float2d
        call c_get_pointer_as_pointer(addr, type, size)
        call c_f_pointer(FIXME%base_addr, addr)
        ! splicer end function.get_pointer_as_pointer_float2d
    end subroutine get_pointer_as_pointer_float2d
#endif

    ! splicer begin additional_functions
    ! splicer end additional_functions

end module generic_mod