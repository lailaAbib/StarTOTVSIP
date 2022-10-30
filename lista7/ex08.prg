Function Main()

    local aA := {}
    local aB := {}
    local aC := {}
    local nCont := 0

    for nCont := 1 TO 20

        aAdd(aA, (hb_RandomInt(1 , 20)))
        aAdd(aB, (hb_RandomInt(1 , 20)))
        aAdd(aC, ( aA[nCont] + aB[nCont]))

         QOUT(Alltrim(str(aA[nCont])) + chr(9) +  "+  "  + chr(9) + Alltrim(str(aB[nCont])) + chr(9) + "=  "  + chr(9) +  Alltrim(str(aC[nCont])))
    next


Return nil
