! wrapfstatement.f
! This file is generated by Shroud nowrite-version. Do not edit.
! Copyright (c) 2017-2021, Lawrence Livermore National Security, LLC and
! other Shroud Project Developers.
! See the top-level COPYRIGHT file for details.
!
! SPDX-License-Identifier: (BSD-3-Clause)
!
!>
!! \file wrapfstatement.f
!! \brief Shroud generated wrapper for statement library
!<
! splicer begin file_top
! splicer end file_top
module statement_mod
    ! splicer begin module_use
    ! splicer end module_use
    implicit none

    ! splicer begin module_top
    ! splicer end module_top

    interface

        ! ----------------------------------------
        ! Function:  int GetNameLength +pure
        ! Attrs:     +intent(result)
        ! Requested: c_native_scalar_result
        ! Match:     c_default
        pure function get_name_length() &
                result(SHT_rv) &
                bind(C, name="STMT_get_name_length")
            use iso_c_binding, only : C_INT
            implicit none
            integer(C_INT) :: SHT_rv
        end function get_name_length

        ! ----------------------------------------
        ! Function:  const string & getNameErrorPattern +deref(result-as-arg)+len(get_name_length())
        ! Attrs:     +deref(result-as-arg)+intent(result)
        ! Exact:     c_string_&_result
        function c_get_name_error_pattern() &
                result(SHT_rv) &
                bind(C, name="STMT_get_name_error_pattern")
            use iso_c_binding, only : C_PTR
            implicit none
            type(C_PTR) SHT_rv
        end function c_get_name_error_pattern

        ! ----------------------------------------
        ! Function:  void getNameErrorPattern +len(get_name_length())
        ! Requested: c_void_scalar_result_buf
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  string & SHF_rv +len(NSHF_rv)
        ! Attrs:     +intent(out)+is_result
        ! Exact:     c_string_&_result_buf
        subroutine c_get_name_error_pattern_bufferify(SHF_rv, NSHF_rv) &
                bind(C, name="STMT_get_name_error_pattern_bufferify")
            use iso_c_binding, only : C_CHAR, C_INT
            implicit none
            character(kind=C_CHAR), intent(OUT) :: SHF_rv(*)
            integer(C_INT), value, intent(IN) :: NSHF_rv
        end subroutine c_get_name_error_pattern_bufferify

        ! splicer begin additional_interfaces
        ! splicer end additional_interfaces
    end interface

contains

    ! Generated by arg_to_buffer
    ! ----------------------------------------
    ! Function:  const string & getNameErrorPattern +deref(result-as-arg)+len(get_name_length())
    ! const string & getNameErrorPattern +deref(result-as-arg)+len(get_name_length())
    ! Attrs:     +deref(result-as-arg)+intent(result)
    ! Requested: f_string_scalar_result_buf_result-as-arg
    ! Match:     f_default
    ! Function:  void getNameErrorPattern +len(get_name_length())
    ! Exact:     c_string_scalar_result_buf
    ! ----------------------------------------
    ! Argument:  string & SHF_rv +len(NSHF_rv)
    ! Attrs:     +intent(out)+is_result
    ! Requested: f_string_&_result_buf
    ! Match:     f_default
    ! Attrs:     +intent(out)+is_result
    ! Exact:     c_string_&_result_buf
    function get_name_error_pattern() &
            result(SHT_rv)
        use iso_c_binding, only : C_INT
        character(len=get_name_length()) :: SHT_rv
        ! splicer begin function.get_name_error_pattern
        call c_get_name_error_pattern_bufferify(SHT_rv, &
            len(SHT_rv, kind=C_INT))
        ! splicer end function.get_name_error_pattern
    end function get_name_error_pattern

    ! splicer begin additional_functions
    ! splicer end additional_functions

end module statement_mod
