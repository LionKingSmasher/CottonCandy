program example_02
    use CottonCandy

    Write(*, *) Integral_func(f1, 100, 10)

    contains

    function f1(x) result(y)
        Real :: x, y;
        y = x + (Plank * x)
    end function f1

    function f2(x) result(y)
        Real :: x, y;
        y = x
    end function f2
end program example_02