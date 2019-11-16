! This file is part of s-dftd3.
!
! Copyright (C) 2019 Sebastian Ehlert
!
! s-dftd3 is free software: you can redistribute it and/or modify it under
! the terms of the GNU General Public License as published by
! the Free Software Foundation, either version 3 of the License, or
! (at your option) any later version.
!
! s-dftd3 is distributed in the hope that it will be useful,
! but WITHOUT ANY WARRANTY; without even the implied warranty of
! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
! GNU General Public License for more details.
!
! You should have received a copy of the GNU General Public License
! along with s-dftd3.  If not, see <https://www.gnu.org/licenses/>.

module d3mod_main
   implicit none
   public :: main_run
   private

contains

subroutine main_run(env, opt, mol, res)
   use d3def_environment
   use d3def_molecule
   use d3def_options
   use d3def_results
   use d3mod_dftd3
   use d3par_dftd3
   class(d3_environment), intent(inout) :: env
   class(d3_options), intent(in) :: opt
   class(d3_molecule), intent(inout) :: mol
   class(d3_results), intent(out) :: res

   ! check for the reference C6 coefficients first
   if (.not.allocated(reference_c6)) call copy_c6(reference_c6)

   call mol%print_info(env%unit)

end subroutine main_run

end module d3mod_main
