Function Main()

    local nI , nJ , nCalc

    for nI := 0 to 15
        nCalc := 1
        for nJ := 1 to nI
            nCalc *= 3
        next nJ
        QOUT("3 elevado a " + alltrim(strzero(nI,2)) + " = " + str(nCalc))
    next nI

RETURN Nil
   


