! wrapfscope_ns2.f
! This is generated code, do not edit
! Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
! other Shroud Project Developers.
! See the top-level COPYRIGHT file for details.
!
! SPDX-License-Identifier: (BSD-3-Clause)
!
!>
!! \file wrapfscope_ns2.f
!! \brief Shroud generated wrapper for ns2 namespace
!<
! splicer begin namespace.ns2.file_top
! splicer end namespace.ns2.file_top
module scope_ns2_mod
    use iso_c_binding, only : C_INT
    ! splicer begin namespace.ns2.module_use
    ! splicer end namespace.ns2.module_use
    implicit none

    ! splicer begin namespace.ns2.module_top
    ! splicer end namespace.ns2.module_top

    !  enum ns2::Color
    integer(C_INT), parameter :: red = 30
    integer(C_INT), parameter :: blue = 31
    integer(C_INT), parameter :: white = 32

    interface

        ! splicer begin namespace.ns2.additional_interfaces
        ! splicer end namespace.ns2.additional_interfaces
    end interface

contains

    ! splicer begin namespace.ns2.additional_functions
    ! splicer end namespace.ns2.additional_functions

end module scope_ns2_mod
