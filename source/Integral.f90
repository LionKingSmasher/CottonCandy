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

function Integral_func(f, start, end, accuracy) result(y)
    procedure(Real) :: f
    Integer :: accuracy, end, start

    Real :: x, y
    x = 0 ! Initialized x
    y = 0 ! Initialized y

    do I=start*accuracy, accuracy*end
        x = Real(I) / accuracy
        y = f(x) /accuracy + y
    enddo
end function Integral_func