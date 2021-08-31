function sinc(x) result(y)
    Real :: x, y
    y = sin(x)/x
end function sinc

function Lambert_W(x, accuracy) result(y)
    Integer :: count, I, M
    Integer :: x, accuracy
    Real :: y, STR, W

    W = 0
    y = 0
    STR = 0
    I = 0
    count = 0
    M = 0

10  if (abs(W - x) .GT. (Real(1)/accuracy) .AND. M .LT. accuracy) then
        I = I + 1
        M = (10 ** count)
        y = STR + Real(I)/M
        W = y * exp(y)
        if (W .GT. x) then
            y = STR + Real(I-1)/M
            STR = y
            I = 0
            count = count + 1
        end if
        goto 10
    end if
end function Lambert_W

! subroutine Lambert_W_test(x, accuracy)
!     Integer :: count, I
!     Integer :: x, accuracy
!     Real :: y, STR, W

!     W = 0
!     y = 0
!     STR = 0
!     I = 0
!     count = 0
!     Write(*, *) "W: ", W

! 10  if (abs(W - x) .GT. (Real(1)/accuracy)) then
!         I = I + 1
!         y = STR + Real(I)/(10 ** count)
!         W = y * exp(y)
!         if (W .GT. x) then
!             y = STR + Real(I-1)/(10 ** count)
!             STR = y
!             I = 0
!             count = count + 1
!             Write(*, *) "W: ", W
!         end if
!         goto 10
!     end if
! end subroutine Lambert_W_test