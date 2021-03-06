! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.2
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module classes_mod
 use, intrinsic :: ISO_C_BINDING
 implicit none
 private

 ! DECLARATION CONSTRUCTS

 integer, parameter :: swig_cmem_own_bit = 0
 integer, parameter :: swig_cmem_rvalue_bit = 1
 type, bind(C) :: SwigClassWrapper
  type(C_PTR), public :: cptr = C_NULL_PTR
  integer(C_INT), public :: cmemflags = 0
 end type
 ! class classes::Class1
 type, public :: Class1
  type(SwigClassWrapper), public :: swigdata
 contains
  procedure :: set_m_flag => swigf_Class1_m_flag_set
  procedure :: get_m_flag => swigf_Class1_m_flag_get
  procedure :: set_m_test => swigf_Class1_m_test_set
  procedure :: get_m_test => swigf_Class1_m_test_get
  procedure :: release => swigf_Class1_release
  procedure :: Method1 => swigf_Class1_Method1
  procedure, private :: swigf_Class1_op_assign__
  generic :: assignment(=) => swigf_Class1_op_assign__
 end type Class1
 ! class classes::Shape
 type, public :: Shape
  type(SwigClassWrapper), public :: swigdata
 contains
  procedure :: get_ivar => swigf_Shape_get_ivar
  procedure :: release => swigf_Shape_release
  procedure, private :: swigf_Shape_op_assign__
  generic :: assignment(=) => swigf_Shape_op_assign__
 end type Shape
 ! class classes::Circle
 type, extends(Shape), public :: Circle
 contains
  procedure :: set_m_radius => swigf_Circle_m_radius_set
  procedure :: get_m_radius => swigf_Circle_m_radius_get
  procedure :: release => swigf_Circle_release
  procedure, private :: swigf_Circle_op_assign__
  generic :: assignment(=) => swigf_Circle_op_assign__
 end type Circle
 interface Class1
  module procedure swigf_new_Class1__SWIG_0, swigf_new_Class1__SWIG_1
 end interface
 interface Shape
  module procedure swigf_new_Shape
 end interface
 interface Circle
  module procedure swigf_new_Circle
 end interface

! WRAPPER DECLARATIONS
interface
subroutine swigc_Class1_m_flag_set(farg1, farg2) &
bind(C, name="_wrap_Class1_m_flag_set")
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
integer(C_INT), intent(in) :: farg2
end subroutine

function swigc_Class1_m_flag_get(farg1) &
bind(C, name="_wrap_Class1_m_flag_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
integer(C_INT) :: fresult
end function

subroutine swigc_Class1_m_test_set(farg1, farg2) &
bind(C, name="_wrap_Class1_m_test_set")
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
integer(C_INT), intent(in) :: farg2
end subroutine

function swigc_Class1_m_test_get(farg1) &
bind(C, name="_wrap_Class1_m_test_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
integer(C_INT) :: fresult
end function

function swigc_new_Class1__SWIG_0() &
bind(C, name="_wrap_new_Class1__SWIG_0") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper) :: fresult
end function

function swigc_new_Class1__SWIG_1(farg1) &
bind(C, name="_wrap_new_Class1__SWIG_1") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
integer(C_INT), intent(in) :: farg1
type(SwigClassWrapper) :: fresult
end function

subroutine swigc_delete_Class1(farg1) &
bind(C, name="_wrap_delete_Class1")
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(inout) :: farg1
end subroutine

function swigc_Class1_Method1(farg1) &
bind(C, name="_wrap_Class1_Method1") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
integer(C_INT) :: fresult
end function

subroutine swigc_Class1_op_assign__(farg1, farg2) &
bind(C, name="_wrap_Class1_op_assign__")
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(inout) :: farg1
type(SwigClassWrapper), intent(in) :: farg2
end subroutine

function swigc_Shape_get_ivar(farg1) &
bind(C, name="_wrap_Shape_get_ivar") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
integer(C_INT) :: fresult
end function

function swigc_new_Shape() &
bind(C, name="_wrap_new_Shape") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper) :: fresult
end function

subroutine swigc_delete_Shape(farg1) &
bind(C, name="_wrap_delete_Shape")
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(inout) :: farg1
end subroutine

subroutine swigc_Shape_op_assign__(farg1, farg2) &
bind(C, name="_wrap_Shape_op_assign__")
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(inout) :: farg1
type(SwigClassWrapper), intent(in) :: farg2
end subroutine

subroutine swigc_Circle_m_radius_set(farg1, farg2) &
bind(C, name="_wrap_Circle_m_radius_set")
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
real(C_DOUBLE), intent(in) :: farg2
end subroutine

function swigc_Circle_m_radius_get(farg1) &
bind(C, name="_wrap_Circle_m_radius_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
real(C_DOUBLE) :: fresult
end function

function swigc_new_Circle() &
bind(C, name="_wrap_new_Circle") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper) :: fresult
end function

subroutine swigc_delete_Circle(farg1) &
bind(C, name="_wrap_delete_Circle")
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(inout) :: farg1
end subroutine

subroutine swigc_Circle_op_assign__(farg1, farg2) &
bind(C, name="_wrap_Circle_op_assign__")
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(inout) :: farg1
type(SwigClassWrapper), intent(in) :: farg2
end subroutine

end interface


contains
 ! MODULE SUBPROGRAMS
subroutine swigf_Class1_m_flag_set(self, m_flag)
use, intrinsic :: ISO_C_BINDING
class(Class1), intent(in) :: self
integer(C_INT), intent(in) :: m_flag
type(SwigClassWrapper) :: farg1 
integer(C_INT) :: farg2 

farg1 = self%swigdata
farg2 = m_flag
call swigc_Class1_m_flag_set(farg1, farg2)
end subroutine

function swigf_Class1_m_flag_get(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
class(Class1), intent(in) :: self
integer(C_INT) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_Class1_m_flag_get(farg1)
swig_result = fresult
end function

subroutine swigf_Class1_m_test_set(self, m_test)
use, intrinsic :: ISO_C_BINDING
class(Class1), intent(in) :: self
integer(C_INT), intent(in) :: m_test
type(SwigClassWrapper) :: farg1 
integer(C_INT) :: farg2 

farg1 = self%swigdata
farg2 = m_test
call swigc_Class1_m_test_set(farg1, farg2)
end subroutine

function swigf_Class1_m_test_get(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
class(Class1), intent(in) :: self
integer(C_INT) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_Class1_m_test_get(farg1)
swig_result = fresult
end function

function swigf_new_Class1__SWIG_0() &
result(self)
use, intrinsic :: ISO_C_BINDING
type(Class1) :: self
type(SwigClassWrapper) :: fresult 

fresult = swigc_new_Class1__SWIG_0()
self%swigdata = fresult
end function

function swigf_new_Class1__SWIG_1(flag) &
result(self)
use, intrinsic :: ISO_C_BINDING
type(Class1) :: self
integer(C_INT), intent(in) :: flag
type(SwigClassWrapper) :: fresult 
integer(C_INT) :: farg1 

farg1 = flag
fresult = swigc_new_Class1__SWIG_1(farg1)
self%swigdata = fresult
end function

subroutine swigf_Class1_release(self)
use, intrinsic :: ISO_C_BINDING
class(Class1), intent(inout) :: self
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
if (btest(farg1%cmemflags, swig_cmem_own_bit)) then
call swigc_delete_Class1(farg1)
endif
farg1%cptr = C_NULL_PTR
farg1%cmemflags = 0
self%swigdata = farg1
end subroutine

function swigf_Class1_Method1(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
class(Class1), intent(in) :: self
integer(C_INT) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_Class1_Method1(farg1)
swig_result = fresult
end function

subroutine swigf_Class1_op_assign__(self, other)
use, intrinsic :: ISO_C_BINDING
class(Class1), intent(inout) :: self
type(Class1), intent(in) :: other
type(SwigClassWrapper) :: farg1 
type(SwigClassWrapper) :: farg2 

farg1 = self%swigdata
farg2 = other%swigdata
call swigc_Class1_op_assign__(farg1, farg2)
self%swigdata = farg1
end subroutine

function swigf_Shape_get_ivar(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
class(Shape), intent(in) :: self
integer(C_INT) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_Shape_get_ivar(farg1)
swig_result = fresult
end function

function swigf_new_Shape() &
result(self)
use, intrinsic :: ISO_C_BINDING
type(Shape) :: self
type(SwigClassWrapper) :: fresult 

fresult = swigc_new_Shape()
self%swigdata = fresult
end function

subroutine swigf_Shape_release(self)
use, intrinsic :: ISO_C_BINDING
class(Shape), intent(inout) :: self
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
if (btest(farg1%cmemflags, swig_cmem_own_bit)) then
call swigc_delete_Shape(farg1)
endif
farg1%cptr = C_NULL_PTR
farg1%cmemflags = 0
self%swigdata = farg1
end subroutine

subroutine swigf_Shape_op_assign__(self, other)
use, intrinsic :: ISO_C_BINDING
class(Shape), intent(inout) :: self
type(Shape), intent(in) :: other
type(SwigClassWrapper) :: farg1 
type(SwigClassWrapper) :: farg2 

farg1 = self%swigdata
farg2 = other%swigdata
call swigc_Shape_op_assign__(farg1, farg2)
self%swigdata = farg1
end subroutine

subroutine swigf_Circle_m_radius_set(self, m_radius)
use, intrinsic :: ISO_C_BINDING
class(Circle), intent(in) :: self
real(C_DOUBLE), intent(in) :: m_radius
type(SwigClassWrapper) :: farg1 
real(C_DOUBLE) :: farg2 

farg1 = self%swigdata
farg2 = m_radius
call swigc_Circle_m_radius_set(farg1, farg2)
end subroutine

function swigf_Circle_m_radius_get(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swig_result
class(Circle), intent(in) :: self
real(C_DOUBLE) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_Circle_m_radius_get(farg1)
swig_result = fresult
end function

function swigf_new_Circle() &
result(self)
use, intrinsic :: ISO_C_BINDING
type(Circle) :: self
type(SwigClassWrapper) :: fresult 

fresult = swigc_new_Circle()
self%swigdata = fresult
end function

subroutine swigf_Circle_release(self)
use, intrinsic :: ISO_C_BINDING
class(Circle), intent(inout) :: self
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
if (btest(farg1%cmemflags, swig_cmem_own_bit)) then
call swigc_delete_Circle(farg1)
endif
farg1%cptr = C_NULL_PTR
farg1%cmemflags = 0
self%swigdata = farg1
end subroutine

subroutine swigf_Circle_op_assign__(self, other)
use, intrinsic :: ISO_C_BINDING
class(Circle), intent(inout) :: self
type(Circle), intent(in) :: other
type(SwigClassWrapper) :: farg1 
type(SwigClassWrapper) :: farg2 

farg1 = self%swigdata
farg2 = other%swigdata
call swigc_Circle_op_assign__(farg1, farg2)
self%swigdata = farg1
end subroutine


end module
