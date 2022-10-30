Function Main()

    local aA := {"A" , "B" , "C" , "D" , "E" , "F" , "G" , "H" , "I" , "J"}
    local aB := {1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10}
    local aC := {}
    local aM := {}
    Local nI

    for nI := 1 to 10                 
        aAdd(aC, (hb_RandomInt(1 , 9)))
    next

    aAdd(aM , aA)
    aAdd(aM , aB)
    aAdd(aM , aC)

    for nI := 1 to len(aM)
        QOUT(hb_valtoexp(aM[nI]))
    next nI

Return NIL
