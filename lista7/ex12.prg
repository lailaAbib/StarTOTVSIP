Function Main()

    local nI , aA := {} , aB := {} 

    aA := array(8)
    aB := array(8)
    for nI := 1 to 8
        aA[nI] := hb_RandomInt(1 , 49)
        aB[9-nI] := aA[nI]
    next


    QOUT("Array A: " , hb_valtoexp(aA))
    QOUT("Array B: " , hb_valtoexp(aB))
Return NIL
