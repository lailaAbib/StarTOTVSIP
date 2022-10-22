Function Main()

    local nI
    local nCont := 32

    QOUT("FOR ")
    for nI := 32  TO 126
        QOUT(Alltrim(StrZero(nI, 3) + " - "+ Chr(nI)))

    next nI

    QOUT("WHILE ")
    while nCont <= 126
        QOUT(Alltrim(StrZero(nCont, 3) + " - "+ Chr(nCont)))
        nCont ++
    end do

RETURN nil
