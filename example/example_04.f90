program example_04
    use CottonCandy
    Open(19, FILE="example_04.dat", status="NEW")
    do I = 2, 1000
        Write(19, *) I, Log_Integral(I)
    enddo
    Close(19)
end program example_04