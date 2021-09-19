!
!              Example Source No.5
!
!      Author: XCell
!      Date  : 2021-09-19 00 : 57 (UTC + 09:00)
!
!      Description: example source for Runge-Kutta Method
!

program example_05
    use CottonCandy
    Real :: x, y
    x = 0
    y = 1
    call Runge_Kutta_Method(f, 1.0, 0.001, 10)
    Open(19, FILE="real_ode_result.dat", status="NEW")
    Do 14, I=0, 10000
        x = x + 0.001
        y = 2.5 * exp(-2*x) - 1.5 * exp(-4*x)
        Write(19, *) x, y
14  continue
    Close(19)
contains
    function f(t, y) result(val)
        Real :: t, y, val
        val = 3 * exp(-4 * t) - 2 * y
    end function f
end program example_05