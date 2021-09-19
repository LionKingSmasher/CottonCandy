subroutine Runge_Kutta_Method(f, y0, h, range)
    procedure(Real) :: f
    Real :: y0, h, x, y, k1, k2, k3, k4
    Integer :: range

    dx = h
    y = y0
    x = 0

    Open(19, FILE="ode_result.dat", status="NEW")
    Do 13, I = 1, (range * INT(1/dx))
        k1 = f(x, y)
        k2 = f(x + Real(1) / 3 * h, y + Real(1) / 3 * k1 * h)
        k3 = f(x + 0.5 * h, y - Real(1) / 3 * k1 * h + k2 * h)
        k4 = f(x + h, y + k1 * h - k2 * h + k3 * h)
        Write(19, *) x, y

        x = x + dx
        y = y + h * (k1 + 3 * k2 + 3 * k3 + k4) / 8
13  continue
    Close(19)
contains
end subroutine Runge_Kutta_Method