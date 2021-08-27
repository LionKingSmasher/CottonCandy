subroutine Integral(f, code, accuracy, range)
    procedure(Real) :: f
    Integer :: code
    Integer :: accuracy, range

    Real :: x, y
    x = 0  ! Initialized x
    y = 0  ! Initialized y

    do I=1, accuracy*range
        x = Real(I) / accuracy
        y = f(x) / accuracy + y
        Write(code, *) x, y
    enddo
end subroutine Integral