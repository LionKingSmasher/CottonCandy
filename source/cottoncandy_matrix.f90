module CottonCandy_Matrix
    implicit none
    private
    public :: CC_Matrix

    Integer :: N = 10 ! Dimension

    type CC_Matrix
        Integer, Dimension(:), Allocatable :: value
    end type CC_Matrix

contains
    subroutine CC_make_matrix(matrix, size)
        type(CC_Matrix), Dimension(:), Allocatable, Intent(InOut) :: Matrix
        Integer, Intent(In) :: size
        Integer :: I

        N = size

        allocate(matrix(size))
        Do 13, I = 0, size
            allocate(matrix(I)%value(size))
13      continue
    end subroutine CC_make_matrix
end module CottonCandy_Matrix