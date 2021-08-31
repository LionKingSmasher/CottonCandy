program example_03
    use CottonCandy
    ! Open(19, FILE="Lambert_W.dat", status="NEW")
    do I = 1, 400
        Write(*, *) I, Lambert_W(I, 10000000)
    enddo
    ! Close(19)
end program example_03