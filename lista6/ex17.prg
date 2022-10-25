Function Exercicio17()

    local cA := "a"
    local cB := 2

    QOUT("a = j , b = ?  => iTroca ")
    cA := "j"
    cB := "?"
    iTroca(@cA, @cB)
    QOUT("a " + cA)
    QOUT("b " + cB)    
    
    if isPar(9)
        QOUT("9 isPar .T. ")
    else
        QOUT("9 isPar .F. ")
    endif
    if isPar(8)
        QOUT("8 isPar .T. ")
    else
        QOUT("8 isPar .F. ")
    endif

    if isImPar(9)
        QOUT("9 isImPar .T. ")
    else
        QOUT("9 isImPar .F. ")
    endif
    if isImPar(8)
        QOUT("8 isImPar .T. ")
    else
        QOUT("8 isImPar .F. ")
    endif

    QOUT("Inverte(5) = " + AllTrim(str(Inverte(5))))
    QOUT("Inverte(-5) = " + AllTrim(str(Inverte(-5))))

    if isDiv(9,5)
        QOUT("9/5 isDiv .T. ")
    else
        QOUT("9/5 isDiv .F. ")
    endif
    if isDiv(8,4)
        QOUT("8/4 isDiv .T. ")
    else
        QOUT("8/4 isDiv .F. ")
    endif

    QOUT("***************")
    QOUT("")
    wait
Return nil
