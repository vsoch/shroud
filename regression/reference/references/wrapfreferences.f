! wrapfreferences.f
! This file is generated by Shroud 0.11.0. Do not edit.
! Copyright (c) 2017-2020, Lawrence Livermore National Security, LLC and
! other Shroud Project Developers.
! See the top-level COPYRIGHT file for details.
!
! SPDX-License-Identifier: (BSD-3-Clause)
!
!>
!! \file wrapfreferences.f
!! \brief Shroud generated wrapper for references library
!<
! splicer begin file_top
! splicer end file_top
module references_mod
    use iso_c_binding, only : C_INT, C_LONG, C_NULL_PTR, C_PTR, C_SIZE_T
    ! splicer begin module_use
    ! splicer end module_use
    implicit none

    ! splicer begin module_top
    ! splicer end module_top

    ! helper capsule_data_helper
    type, bind(C) :: SHROUD_capsule_data
        type(C_PTR) :: addr = C_NULL_PTR  ! address of C++ memory
        integer(C_INT) :: idtor = 0       ! index of destructor
    end type SHROUD_capsule_data

    ! helper array_context
    type, bind(C) :: SHROUD_array
        ! address of C++ memory
        type(SHROUD_capsule_data) :: cxx
        ! address of data in cxx
        type(C_PTR) :: base_addr = C_NULL_PTR
        ! type of element
        integer(C_INT) :: type
        ! bytes-per-item or character len of data in cxx
        integer(C_SIZE_T) :: elem_len = 0_C_SIZE_T
        ! size of data in cxx
        integer(C_SIZE_T) :: size = 0_C_SIZE_T
        ! number of dimensions
        integer(C_INT) :: rank = -1
        integer(C_LONG) :: shape(7) = 0
    end type SHROUD_array

    type, bind(C) :: SHROUD_arraywrapper_capsule
        type(C_PTR) :: addr = C_NULL_PTR  ! address of C++ memory
        integer(C_INT) :: idtor = 0       ! index of destructor
    end type SHROUD_arraywrapper_capsule

    type arraywrapper
        type(SHROUD_arraywrapper_capsule) :: cxxmem
        ! splicer begin class.ArrayWrapper.component_part
        ! splicer end class.ArrayWrapper.component_part
    contains
        procedure :: set_size => arraywrapper_set_size
        procedure :: get_size => arraywrapper_get_size
        procedure :: fill_size => arraywrapper_fill_size
        procedure :: allocate => arraywrapper_allocate
        procedure :: get_array => arraywrapper_get_array
        procedure :: get_array_const => arraywrapper_get_array_const
        procedure :: get_array_c => arraywrapper_get_array_c
        procedure :: get_array_const_c => arraywrapper_get_array_const_c
        procedure :: fetch_array_ptr => arraywrapper_fetch_array_ptr
        procedure :: fetch_array_ref => arraywrapper_fetch_array_ref
        procedure :: fetch_void_ptr => arraywrapper_fetch_void_ptr
        procedure :: fetch_void_ref => arraywrapper_fetch_void_ref
        procedure :: get_instance => arraywrapper_get_instance
        procedure :: set_instance => arraywrapper_set_instance
        procedure :: associated => arraywrapper_associated
        ! splicer begin class.ArrayWrapper.type_bound_procedure_part
        ! splicer end class.ArrayWrapper.type_bound_procedure_part
    end type arraywrapper

    interface operator (.eq.)
        module procedure arraywrapper_eq
    end interface

    interface operator (.ne.)
        module procedure arraywrapper_ne
    end interface

    interface

        ! ----------------------------------------
        ! Function:  ArrayWrapper
        ! Exact:     c_shadow_scalar_result
        function c_arraywrapper_ctor(SHT_crv) &
                result(SHT_rv) &
                bind(C, name="REF_ArrayWrapper_ctor")
            use iso_c_binding, only : C_PTR
            import :: SHROUD_arraywrapper_capsule
            implicit none
            type(SHROUD_arraywrapper_capsule), intent(OUT) :: SHT_crv
            type(C_PTR) SHT_rv
        end function c_arraywrapper_ctor

        ! ----------------------------------------
        ! Function:  void setSize
        ! Requested: c_unknown_scalar_result
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  int size +intent(in)+value
        ! Requested: c_native_scalar_in
        ! Match:     c_default
        subroutine c_arraywrapper_set_size(self, size) &
                bind(C, name="REF_ArrayWrapper_set_size")
            use iso_c_binding, only : C_INT
            import :: SHROUD_arraywrapper_capsule
            implicit none
            type(SHROUD_arraywrapper_capsule), intent(IN) :: self
            integer(C_INT), value, intent(IN) :: size
        end subroutine c_arraywrapper_set_size

        ! ----------------------------------------
        ! Function:  int getSize
        ! Requested: c_native_scalar_result
        ! Match:     c_default
        pure function c_arraywrapper_get_size(self) &
                result(SHT_rv) &
                bind(C, name="REF_ArrayWrapper_get_size")
            use iso_c_binding, only : C_INT
            import :: SHROUD_arraywrapper_capsule
            implicit none
            type(SHROUD_arraywrapper_capsule), intent(IN) :: self
            integer(C_INT) :: SHT_rv
        end function c_arraywrapper_get_size

        ! ----------------------------------------
        ! Function:  void fillSize
        ! Requested: c_unknown_scalar_result
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  int & size +intent(out)
        ! Requested: c_native_&_out
        ! Match:     c_default
        subroutine c_arraywrapper_fill_size(self, size) &
                bind(C, name="REF_ArrayWrapper_fill_size")
            use iso_c_binding, only : C_INT
            import :: SHROUD_arraywrapper_capsule
            implicit none
            type(SHROUD_arraywrapper_capsule), intent(IN) :: self
            integer(C_INT), intent(OUT) :: size
        end subroutine c_arraywrapper_fill_size

        ! ----------------------------------------
        ! Function:  void allocate
        ! Requested: c_unknown_scalar_result
        ! Match:     c_default
        subroutine c_arraywrapper_allocate(self) &
                bind(C, name="REF_ArrayWrapper_allocate")
            import :: SHROUD_arraywrapper_capsule
            implicit none
            type(SHROUD_arraywrapper_capsule), intent(IN) :: self
        end subroutine c_arraywrapper_allocate

        ! ----------------------------------------
        ! Function:  double * getArray +deref(pointer)+dimension(getSize())
        ! Requested: c_native_*_result
        ! Match:     c_default
        function c_arraywrapper_get_array(self) &
                result(SHT_rv) &
                bind(C, name="REF_ArrayWrapper_get_array")
            use iso_c_binding, only : C_PTR
            import :: SHROUD_arraywrapper_capsule
            implicit none
            type(SHROUD_arraywrapper_capsule), intent(IN) :: self
            type(C_PTR) SHT_rv
        end function c_arraywrapper_get_array

        ! ----------------------------------------
        ! Function:  double * getArray +context(DSHC_rv)+deref(pointer)+dimension(getSize())
        ! Exact:     c_native_*_result_buf
        function c_arraywrapper_get_array_bufferify(self, DSHC_rv) &
                result(SHT_rv) &
                bind(C, name="REF_ArrayWrapper_get_array_bufferify")
            use iso_c_binding, only : C_PTR
            import :: SHROUD_array, SHROUD_arraywrapper_capsule
            implicit none
            type(SHROUD_arraywrapper_capsule), intent(IN) :: self
            type(SHROUD_array), intent(INOUT) :: DSHC_rv
            type(C_PTR) SHT_rv
        end function c_arraywrapper_get_array_bufferify

        ! ----------------------------------------
        ! Function:  double * getArrayConst +deref(pointer)+dimension(getSize())
        ! Requested: c_native_*_result
        ! Match:     c_default
        pure function c_arraywrapper_get_array_const(self) &
                result(SHT_rv) &
                bind(C, name="REF_ArrayWrapper_get_array_const")
            use iso_c_binding, only : C_PTR
            import :: SHROUD_arraywrapper_capsule
            implicit none
            type(SHROUD_arraywrapper_capsule), intent(IN) :: self
            type(C_PTR) SHT_rv
        end function c_arraywrapper_get_array_const

        ! ----------------------------------------
        ! Function:  double * getArrayConst +context(DSHC_rv)+deref(pointer)+dimension(getSize())
        ! Exact:     c_native_*_result_buf
        function c_arraywrapper_get_array_const_bufferify(self, DSHC_rv) &
                result(SHT_rv) &
                bind(C, name="REF_ArrayWrapper_get_array_const_bufferify")
            use iso_c_binding, only : C_PTR
            import :: SHROUD_array, SHROUD_arraywrapper_capsule
            implicit none
            type(SHROUD_arraywrapper_capsule), intent(IN) :: self
            type(SHROUD_array), intent(INOUT) :: DSHC_rv
            type(C_PTR) SHT_rv
        end function c_arraywrapper_get_array_const_bufferify

        ! ----------------------------------------
        ! Function:  const double * getArrayC +deref(pointer)+dimension(getSize())
        ! Requested: c_native_*_result
        ! Match:     c_default
        function c_arraywrapper_get_array_c(self) &
                result(SHT_rv) &
                bind(C, name="REF_ArrayWrapper_get_array_c")
            use iso_c_binding, only : C_PTR
            import :: SHROUD_arraywrapper_capsule
            implicit none
            type(SHROUD_arraywrapper_capsule), intent(IN) :: self
            type(C_PTR) SHT_rv
        end function c_arraywrapper_get_array_c

        ! ----------------------------------------
        ! Function:  const double * getArrayC +context(DSHC_rv)+deref(pointer)+dimension(getSize())
        ! Exact:     c_native_*_result_buf
        function c_arraywrapper_get_array_c_bufferify(self, DSHC_rv) &
                result(SHT_rv) &
                bind(C, name="REF_ArrayWrapper_get_array_c_bufferify")
            use iso_c_binding, only : C_PTR
            import :: SHROUD_array, SHROUD_arraywrapper_capsule
            implicit none
            type(SHROUD_arraywrapper_capsule), intent(IN) :: self
            type(SHROUD_array), intent(INOUT) :: DSHC_rv
            type(C_PTR) SHT_rv
        end function c_arraywrapper_get_array_c_bufferify

        ! ----------------------------------------
        ! Function:  const double * getArrayConstC +deref(pointer)+dimension(getSize())
        ! Requested: c_native_*_result
        ! Match:     c_default
        pure function c_arraywrapper_get_array_const_c(self) &
                result(SHT_rv) &
                bind(C, name="REF_ArrayWrapper_get_array_const_c")
            use iso_c_binding, only : C_PTR
            import :: SHROUD_arraywrapper_capsule
            implicit none
            type(SHROUD_arraywrapper_capsule), intent(IN) :: self
            type(C_PTR) SHT_rv
        end function c_arraywrapper_get_array_const_c

        ! ----------------------------------------
        ! Function:  const double * getArrayConstC +context(DSHC_rv)+deref(pointer)+dimension(getSize())
        ! Exact:     c_native_*_result_buf
        function c_arraywrapper_get_array_const_c_bufferify(self, &
                DSHC_rv) &
                result(SHT_rv) &
                bind(C, name="REF_ArrayWrapper_get_array_const_c_bufferify")
            use iso_c_binding, only : C_PTR
            import :: SHROUD_array, SHROUD_arraywrapper_capsule
            implicit none
            type(SHROUD_arraywrapper_capsule), intent(IN) :: self
            type(SHROUD_array), intent(INOUT) :: DSHC_rv
            type(C_PTR) SHT_rv
        end function c_arraywrapper_get_array_const_c_bufferify

        ! ----------------------------------------
        ! Function:  void fetchArrayPtr
        ! Requested: c_unknown_scalar_result
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  double * * array +deref(pointer)+dimension(isize)+intent(out)
        ! Requested: c_native_**_out_pointer
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  int * isize +hidden+intent(in)
        ! Requested: c_native_*_in
        ! Match:     c_default
        subroutine c_arraywrapper_fetch_array_ptr(self, array, isize) &
                bind(C, name="REF_ArrayWrapper_fetch_array_ptr")
            use iso_c_binding, only : C_INT, C_PTR
            import :: SHROUD_arraywrapper_capsule
            implicit none
            type(SHROUD_arraywrapper_capsule), intent(IN) :: self
            type(C_PTR), intent(OUT) :: array
            integer(C_INT), intent(IN) :: isize
        end subroutine c_arraywrapper_fetch_array_ptr

        ! ----------------------------------------
        ! Function:  void fetchArrayPtr
        ! Requested: c_unknown_scalar_result_buf
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  double * * array +context(Darray)+deref(pointer)+dimension(isize)+intent(out)
        ! Requested: c_native_**_out_buf_pointer
        ! Match:     c_native_**_out_buf
        ! ----------------------------------------
        ! Argument:  int * isize +hidden+intent(in)
        ! Requested: c_native_*_in_buf
        ! Match:     c_default
        subroutine c_arraywrapper_fetch_array_ptr_bufferify(self, &
                Darray, isize) &
                bind(C, name="REF_ArrayWrapper_fetch_array_ptr_bufferify")
            use iso_c_binding, only : C_INT
            import :: SHROUD_array, SHROUD_arraywrapper_capsule
            implicit none
            type(SHROUD_arraywrapper_capsule), intent(IN) :: self
            type(SHROUD_array), intent(INOUT) :: Darray
            integer(C_INT), intent(IN) :: isize
        end subroutine c_arraywrapper_fetch_array_ptr_bufferify

        ! ----------------------------------------
        ! Function:  void fetchArrayRef
        ! Requested: c_unknown_scalar_result
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  double * & array +deref(pointer)+dimension(isize)+intent(out)
        ! Requested: c_native_*&_out_pointer
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  int & isize +hidden+intent(in)
        ! Requested: c_native_&_in
        ! Match:     c_default
        subroutine c_arraywrapper_fetch_array_ref(self, array, isize) &
                bind(C, name="REF_ArrayWrapper_fetch_array_ref")
            use iso_c_binding, only : C_INT, C_PTR
            import :: SHROUD_arraywrapper_capsule
            implicit none
            type(SHROUD_arraywrapper_capsule), intent(IN) :: self
            type(C_PTR), intent(OUT) :: array
            integer(C_INT), intent(IN) :: isize
        end subroutine c_arraywrapper_fetch_array_ref

        ! ----------------------------------------
        ! Function:  void fetchArrayRef
        ! Requested: c_unknown_scalar_result_buf
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  double * & array +context(Darray)+deref(pointer)+dimension(isize)+intent(out)
        ! Requested: c_native_*&_out_buf_pointer
        ! Match:     c_native_*&_out_buf
        ! ----------------------------------------
        ! Argument:  int & isize +hidden+intent(in)
        ! Requested: c_native_&_in_buf
        ! Match:     c_default
        subroutine c_arraywrapper_fetch_array_ref_bufferify(self, &
                Darray, isize) &
                bind(C, name="REF_ArrayWrapper_fetch_array_ref_bufferify")
            use iso_c_binding, only : C_INT
            import :: SHROUD_array, SHROUD_arraywrapper_capsule
            implicit none
            type(SHROUD_arraywrapper_capsule), intent(IN) :: self
            type(SHROUD_array), intent(INOUT) :: Darray
            integer(C_INT), intent(IN) :: isize
        end subroutine c_arraywrapper_fetch_array_ref_bufferify

        ! ----------------------------------------
        ! Function:  void fetchVoidPtr
        ! Requested: c_unknown_scalar_result
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  void * * array +intent(out)
        ! Requested: c_unknown_**_out
        ! Match:     c_default
        subroutine c_arraywrapper_fetch_void_ptr(self, array) &
                bind(C, name="REF_ArrayWrapper_fetch_void_ptr")
            use iso_c_binding, only : C_PTR
            import :: SHROUD_arraywrapper_capsule
            implicit none
            type(SHROUD_arraywrapper_capsule), intent(IN) :: self
            type(C_PTR), intent(OUT) :: array
        end subroutine c_arraywrapper_fetch_void_ptr

        ! ----------------------------------------
        ! Function:  void fetchVoidRef
        ! Requested: c_unknown_scalar_result
        ! Match:     c_default
        ! ----------------------------------------
        ! Argument:  void * & array +intent(out)
        ! Requested: c_unknown_*&_out
        ! Match:     c_default
        subroutine c_arraywrapper_fetch_void_ref(self, array) &
                bind(C, name="REF_ArrayWrapper_fetch_void_ref")
            use iso_c_binding, only : C_PTR
            import :: SHROUD_arraywrapper_capsule
            implicit none
            type(SHROUD_arraywrapper_capsule), intent(IN) :: self
            type(C_PTR), intent(OUT) :: array
        end subroutine c_arraywrapper_fetch_void_ref

        ! splicer begin class.ArrayWrapper.additional_interfaces
        ! splicer end class.ArrayWrapper.additional_interfaces

        ! splicer begin additional_interfaces
        ! splicer end additional_interfaces
    end interface

contains

    ! ----------------------------------------
    ! Function:  ArrayWrapper
    ! ArrayWrapper
    ! Exact:     f_shadow_ctor
    ! Exact:     c_shadow_ctor
    function arraywrapper_ctor() &
            result(SHT_rv)
        use iso_c_binding, only : C_PTR
        type(arraywrapper) :: SHT_rv
        ! splicer begin class.ArrayWrapper.method.ctor
        type(C_PTR) :: SHT_prv
        SHT_prv = c_arraywrapper_ctor(SHT_rv%cxxmem)
        ! splicer end class.ArrayWrapper.method.ctor
    end function arraywrapper_ctor

    ! ----------------------------------------
    ! Function:  void setSize
    ! void setSize
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int size +intent(in)+value
    ! Requested: f_native_scalar_in
    ! Match:     f_default
    ! Requested: c_native_scalar_in
    ! Match:     c_default
    subroutine arraywrapper_set_size(obj, size)
        use iso_c_binding, only : C_INT
        class(arraywrapper) :: obj
        integer(C_INT), value, intent(IN) :: size
        ! splicer begin class.ArrayWrapper.method.set_size
        call c_arraywrapper_set_size(obj%cxxmem, size)
        ! splicer end class.ArrayWrapper.method.set_size
    end subroutine arraywrapper_set_size

    ! ----------------------------------------
    ! Function:  int getSize
    ! int getSize
    ! Requested: f_native_scalar_result
    ! Match:     f_default
    ! Requested: c_native_scalar_result
    ! Match:     c_default
    function arraywrapper_get_size(obj) &
            result(SHT_rv)
        use iso_c_binding, only : C_INT
        class(arraywrapper) :: obj
        integer(C_INT) :: SHT_rv
        ! splicer begin class.ArrayWrapper.method.get_size
        SHT_rv = c_arraywrapper_get_size(obj%cxxmem)
        ! splicer end class.ArrayWrapper.method.get_size
    end function arraywrapper_get_size

    ! ----------------------------------------
    ! Function:  void fillSize
    ! void fillSize
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  int & size +intent(out)
    ! Requested: f_native_&_out
    ! Match:     f_default
    ! Requested: c_native_&_out
    ! Match:     c_default
    subroutine arraywrapper_fill_size(obj, size)
        use iso_c_binding, only : C_INT
        class(arraywrapper) :: obj
        integer(C_INT), intent(OUT) :: size
        ! splicer begin class.ArrayWrapper.method.fill_size
        call c_arraywrapper_fill_size(obj%cxxmem, size)
        ! splicer end class.ArrayWrapper.method.fill_size
    end subroutine arraywrapper_fill_size

    ! ----------------------------------------
    ! Function:  void allocate
    ! void allocate
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    subroutine arraywrapper_allocate(obj)
        class(arraywrapper) :: obj
        ! splicer begin class.ArrayWrapper.method.allocate
        call c_arraywrapper_allocate(obj%cxxmem)
        ! splicer end class.ArrayWrapper.method.allocate
    end subroutine arraywrapper_allocate

    ! Generated by arg_to_buffer
    ! ----------------------------------------
    ! Function:  double * getArray +deref(pointer)+dimension(getSize())
    ! double * getArray +deref(pointer)+dimension(getSize())
    ! Exact:     f_native_*_result_pointer
    ! Function:  double * getArray +context(DSHC_rv)+deref(pointer)+dimension(getSize())
    ! Exact:     c_native_*_result_buf
    function arraywrapper_get_array(obj) &
            result(SHT_rv)
        use iso_c_binding, only : C_DOUBLE, C_PTR, c_f_pointer
        class(arraywrapper) :: obj
        type(SHROUD_array) :: DSHC_rv
        real(C_DOUBLE), pointer :: SHT_rv(:)
        ! splicer begin class.ArrayWrapper.method.get_array
        type(C_PTR) :: SHT_ptr
        SHT_ptr = c_arraywrapper_get_array_bufferify(obj%cxxmem, &
            DSHC_rv)
        call c_f_pointer(SHT_ptr, SHT_rv, DSHC_rv%shape(1:1))
        ! splicer end class.ArrayWrapper.method.get_array
    end function arraywrapper_get_array

    ! Generated by arg_to_buffer
    ! ----------------------------------------
    ! Function:  double * getArrayConst +deref(pointer)+dimension(getSize())
    ! double * getArrayConst +deref(pointer)+dimension(getSize())
    ! Exact:     f_native_*_result_pointer
    ! Function:  double * getArrayConst +context(DSHC_rv)+deref(pointer)+dimension(getSize())
    ! Exact:     c_native_*_result_buf
    function arraywrapper_get_array_const(obj) &
            result(SHT_rv)
        use iso_c_binding, only : C_DOUBLE, C_PTR, c_f_pointer
        class(arraywrapper) :: obj
        type(SHROUD_array) :: DSHC_rv
        real(C_DOUBLE), pointer :: SHT_rv(:)
        ! splicer begin class.ArrayWrapper.method.get_array_const
        type(C_PTR) :: SHT_ptr
        SHT_ptr = c_arraywrapper_get_array_const_bufferify(obj%cxxmem, &
            DSHC_rv)
        call c_f_pointer(SHT_ptr, SHT_rv, DSHC_rv%shape(1:1))
        ! splicer end class.ArrayWrapper.method.get_array_const
    end function arraywrapper_get_array_const

    ! Generated by arg_to_buffer
    ! ----------------------------------------
    ! Function:  const double * getArrayC +deref(pointer)+dimension(getSize())
    ! const double * getArrayC +deref(pointer)+dimension(getSize())
    ! Exact:     f_native_*_result_pointer
    ! Function:  const double * getArrayC +context(DSHC_rv)+deref(pointer)+dimension(getSize())
    ! Exact:     c_native_*_result_buf
    function arraywrapper_get_array_c(obj) &
            result(SHT_rv)
        use iso_c_binding, only : C_DOUBLE, C_PTR, c_f_pointer
        class(arraywrapper) :: obj
        type(SHROUD_array) :: DSHC_rv
        real(C_DOUBLE), pointer :: SHT_rv(:)
        ! splicer begin class.ArrayWrapper.method.get_array_c
        type(C_PTR) :: SHT_ptr
        SHT_ptr = c_arraywrapper_get_array_c_bufferify(obj%cxxmem, &
            DSHC_rv)
        call c_f_pointer(SHT_ptr, SHT_rv, DSHC_rv%shape(1:1))
        ! splicer end class.ArrayWrapper.method.get_array_c
    end function arraywrapper_get_array_c

    ! Generated by arg_to_buffer
    ! ----------------------------------------
    ! Function:  const double * getArrayConstC +deref(pointer)+dimension(getSize())
    ! const double * getArrayConstC +deref(pointer)+dimension(getSize())
    ! Exact:     f_native_*_result_pointer
    ! Function:  const double * getArrayConstC +context(DSHC_rv)+deref(pointer)+dimension(getSize())
    ! Exact:     c_native_*_result_buf
    function arraywrapper_get_array_const_c(obj) &
            result(SHT_rv)
        use iso_c_binding, only : C_DOUBLE, C_PTR, c_f_pointer
        class(arraywrapper) :: obj
        type(SHROUD_array) :: DSHC_rv
        real(C_DOUBLE), pointer :: SHT_rv(:)
        ! splicer begin class.ArrayWrapper.method.get_array_const_c
        type(C_PTR) :: SHT_ptr
        SHT_ptr = c_arraywrapper_get_array_const_c_bufferify(obj%cxxmem, &
            DSHC_rv)
        call c_f_pointer(SHT_ptr, SHT_rv, DSHC_rv%shape(1:1))
        ! splicer end class.ArrayWrapper.method.get_array_const_c
    end function arraywrapper_get_array_const_c

    ! Generated by arg_to_buffer
    ! ----------------------------------------
    ! Function:  void fetchArrayPtr
    ! void fetchArrayPtr
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  double * * array +deref(pointer)+dimension(isize)+intent(out)
    ! Requested: f_native_**_out_pointer
    ! Match:     f_native_**_out
    ! Argument:  double * * array +context(Darray)+deref(pointer)+dimension(isize)+intent(out)
    ! Exact:     c_native_**_out_buf
    ! ----------------------------------------
    ! Argument:  int * isize +hidden+intent(in)
    ! Requested: f_native_*_in
    ! Match:     f_default
    ! Requested: c_native_*_in_buf
    ! Match:     c_default
    subroutine arraywrapper_fetch_array_ptr(obj, array)
        use iso_c_binding, only : C_DOUBLE, C_INT, c_f_pointer
        class(arraywrapper) :: obj
        real(C_DOUBLE), intent(OUT), pointer :: array(:)
        type(SHROUD_array) :: Darray
        integer(C_INT) :: isize
        ! splicer begin class.ArrayWrapper.method.fetch_array_ptr
        call c_arraywrapper_fetch_array_ptr_bufferify(obj%cxxmem, &
            Darray, isize)
        call c_f_pointer(Darray%base_addr, array, Darray%shape(1:1))
        ! splicer end class.ArrayWrapper.method.fetch_array_ptr
    end subroutine arraywrapper_fetch_array_ptr

    ! Generated by arg_to_buffer
    ! ----------------------------------------
    ! Function:  void fetchArrayRef
    ! void fetchArrayRef
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  double * & array +deref(pointer)+dimension(isize)+intent(out)
    ! Requested: f_native_*&_out_pointer
    ! Match:     f_native_*&_out
    ! Argument:  double * & array +context(Darray)+deref(pointer)+dimension(isize)+intent(out)
    ! Exact:     c_native_*&_out_buf
    ! ----------------------------------------
    ! Argument:  int & isize +hidden+intent(in)
    ! Requested: f_native_&_in
    ! Match:     f_default
    ! Requested: c_native_&_in_buf
    ! Match:     c_default
    subroutine arraywrapper_fetch_array_ref(obj, array)
        use iso_c_binding, only : C_DOUBLE, C_INT, c_f_pointer
        class(arraywrapper) :: obj
        real(C_DOUBLE), intent(OUT), pointer :: array(:)
        type(SHROUD_array) :: Darray
        integer(C_INT) :: isize
        ! splicer begin class.ArrayWrapper.method.fetch_array_ref
        call c_arraywrapper_fetch_array_ref_bufferify(obj%cxxmem, &
            Darray, isize)
        call c_f_pointer(Darray%base_addr, array, Darray%shape(1:1))
        ! splicer end class.ArrayWrapper.method.fetch_array_ref
    end subroutine arraywrapper_fetch_array_ref

    ! ----------------------------------------
    ! Function:  void fetchVoidPtr
    ! void fetchVoidPtr
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  void * * array +intent(out)
    ! Exact:     f_unknown_**_out
    ! Requested: c_unknown_**_out
    ! Match:     c_default
    subroutine arraywrapper_fetch_void_ptr(obj, array)
        use iso_c_binding, only : C_PTR
        class(arraywrapper) :: obj
        type(C_PTR), intent(OUT) :: array
        ! splicer begin class.ArrayWrapper.method.fetch_void_ptr
        call c_arraywrapper_fetch_void_ptr(obj%cxxmem, array)
        ! splicer end class.ArrayWrapper.method.fetch_void_ptr
    end subroutine arraywrapper_fetch_void_ptr

    ! ----------------------------------------
    ! Function:  void fetchVoidRef
    ! void fetchVoidRef
    ! Requested: f_subroutine
    ! Match:     f_default
    ! Requested: c
    ! Match:     c_default
    ! ----------------------------------------
    ! Argument:  void * & array +intent(out)
    ! Requested: f_unknown_*&_out
    ! Match:     f_default
    ! Requested: c_unknown_*&_out
    ! Match:     c_default
    subroutine arraywrapper_fetch_void_ref(obj, array)
        class(arraywrapper) :: obj
        type(C_PTR), intent(OUT) :: array
        ! splicer begin class.ArrayWrapper.method.fetch_void_ref
        call c_arraywrapper_fetch_void_ref(obj%cxxmem, array)
        ! splicer end class.ArrayWrapper.method.fetch_void_ref
    end subroutine arraywrapper_fetch_void_ref

    ! Return pointer to C++ memory.
    function arraywrapper_get_instance(obj) result (cxxptr)
        use iso_c_binding, only: C_PTR
        class(arraywrapper), intent(IN) :: obj
        type(C_PTR) :: cxxptr
        cxxptr = obj%cxxmem%addr
    end function arraywrapper_get_instance

    subroutine arraywrapper_set_instance(obj, cxxmem)
        use iso_c_binding, only: C_PTR
        class(arraywrapper), intent(INOUT) :: obj
        type(C_PTR), intent(IN) :: cxxmem
        obj%cxxmem%addr = cxxmem
        obj%cxxmem%idtor = 0
    end subroutine arraywrapper_set_instance

    function arraywrapper_associated(obj) result (rv)
        use iso_c_binding, only: c_associated
        class(arraywrapper), intent(IN) :: obj
        logical rv
        rv = c_associated(obj%cxxmem%addr)
    end function arraywrapper_associated

    ! splicer begin class.ArrayWrapper.additional_functions
    ! splicer end class.ArrayWrapper.additional_functions

    ! splicer begin additional_functions
    ! splicer end additional_functions

    function arraywrapper_eq(a,b) result (rv)
        use iso_c_binding, only: c_associated
        type(arraywrapper), intent(IN) ::a,b
        logical :: rv
        if (c_associated(a%cxxmem%addr, b%cxxmem%addr)) then
            rv = .true.
        else
            rv = .false.
        endif
    end function arraywrapper_eq

    function arraywrapper_ne(a,b) result (rv)
        use iso_c_binding, only: c_associated
        type(arraywrapper), intent(IN) ::a,b
        logical :: rv
        if (.not. c_associated(a%cxxmem%addr, b%cxxmem%addr)) then
            rv = .true.
        else
            rv = .false.
        endif
    end function arraywrapper_ne

end module references_mod
