program main
    use CottonCandy

    Open(19, FILE="test.dat", status="NEW")
    call Integral(f1, 19)
    close(19)

    Open(19, FILE="test2.dat", status="NEW")
    call Integral(f2, 19)
    close(19)

    contains

    function f1(x) result(y)
        Real :: x, y;
        y = x + (Plank * x)
    end function f1

    function f2(x) result(y)
        Real :: x, y;
        y = x
    end function f2
end program main