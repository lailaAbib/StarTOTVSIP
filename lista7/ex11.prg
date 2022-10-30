Function Main()

    local nI := 0
    local aA := {}  
    local aB := {} 

     for nI := 1 to 15
        aAdd(aA, (hb_RandomInt(1 , 49)))
    next
    for nI := 15 to 1 step -1
        aAdd(aB, aA[nI])
    next


    QOUT("Array A: " , hb_valtoexp(aA))
    QOUT("Array B: " , hb_valtoexp(aB))
Return NIL
