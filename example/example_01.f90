!
!          Example for CottonCandy
!
!              Author: XCell(Shin Hyeon Kyu)
!          Date: 2021.08.27
!

program example_01
    use CottonCandy
    Open(19, FILE="example_01.dat", status="NEW")
    call Integral(f1, 19, 10000, 5)  ! Integral
    Close(19)

    contains
    function f1(x) result(y)
        Real :: x, y
        y = x ** x
    end function f1
end program example_01