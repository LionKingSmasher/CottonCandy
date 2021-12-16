function FourierTransform(f, start, end) result(y)
    procedure(Real) :: f
    Integer :: start, end
    Real :: y

    y = Integral_func(f2, start, end, 10000)

    contains

    function f2(x) result(y)
        Real :: y
        y = f(x)*exp(complex(0, -1)*PI*x)
    end function
end function

function ReverseFourierTransform(f, start, end) result(y)
    procedure(Real) :: f
    Integer :: start, end
    Real :: y

    y = Real(1) / (2 * PI) * Integral_func(f2, start, end, 10000)

    contains

    function f2(x) result(y)
        Real :: y
        y = f(x)*exp(complex(0, 1)*PI*x)
    end function
end function