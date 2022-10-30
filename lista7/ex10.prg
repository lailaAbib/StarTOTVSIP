Function Main()

    local nI := 0
    local aA := {}  
    local aB := {} 
    local aC := {}

    FOR nI := 1 TO 20
        aAdd(aA, (hb_RandomInt(1 , 5)))
        aAdd(aB, (hb_RandomInt(1 , 5)))
        aAdd(aC, ( aA[nI] + aB[nI]))
    NEXT


    QOUT("Array A: " , hb_valtoexp(aA))
    QOUT("Array B: " , hb_valtoexp(aB))
    QOUT("Array C: " , hb_valtoexp(aC))
Return NIL
