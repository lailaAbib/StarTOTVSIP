Function Main()

    local nI
    local nA      := 0
    local nB      := 1
    local nC      := 0
    local nCont   := 1


    while !IsDigit(nI) .OR. val(nI) <= 0 .OR. val(nI) > 97
        ACCEPT "Informe a quantidade de numeros): " TO nI
    enddo
    nI := val(nI)

    if nI = 0
        QOUT(nA)
    elseif nI = 1
        QOUT(nB)
    else
            QOUT("A sequencia : ")
            QOUT(StrZero(nCont,4) , ":" , AllTrim(str(nB)))
        while (nCont < nI)
            nC := nA + nB
            nA := nB
            nB := nC
                nCont++
            QOUT(StrZero(nCont,4) , ":" , AllTrim(str(nC)))
       enddo   
    endif

RETURN Nil
   


