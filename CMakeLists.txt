cmake_minimum_required(VERSION 3.22)

project(CottonCandy)

set(CMAKE_Fortran_COMPILER "/usr/bin/flang")
set(CMAKE_Fortran_COMPILER_AR "/usr/bin/llvm-ar")
set(CMAKE_Fortran_COMPILER_RANLIB "/usr/bin/llvm-ranlib")

enable_language(Fortran)

add_library(cottoncandy STATIC
    source/cottoncandy.f90
    source/cottoncandy_matrix.f90
)