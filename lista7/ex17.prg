Function Main()

    local nI    := 0
    local aA    := {} 
    local aB    := {} 
    local nAux  := 0

    FOR nI := 1 TO 10
        aAdd(aA, (hb_RandomInt(1 , 49)))
        nAux += aA[nI]
        aAdd(aB, ( nAux ))
    NEXT 
    
    QOUT("Array A: " , hb_valtoexp(aA))
    QOUT("Array B: " , hb_valtoexp(aB))

Return NIL
