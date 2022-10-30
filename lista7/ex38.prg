Function Main()
    
    local aA := {{"A","B","C"},{"D","E","F"},{"G","H","I"}}
    local aB := {array(3), array(3), array(3)}
    local nI , nJ
    
    for nI := 1 to 3
        for nJ := 1 to 3
            aB[nI][nJ] := aA[nJ][nI]
        next nJ
    next nI

    QOUT(hb_valtoexp(aB[1]))
    QOUT(hb_valtoexp(aB[2]))
    QOUT(hb_valtoexp(aB[3]))
    
Return nil
