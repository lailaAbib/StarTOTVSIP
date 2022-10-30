Function Main()

    local aMatriz := {{"O","Q","*","I"}, ;
                      {"E","*","E","S"}, ;
                      {"R","E","U","T"}, ;
                        {"A", "*", "*", "S"}}
    local nI      := 0
    local nJ      := 0
    local cAux    := ""

    FOR nI := 1 TO 3
        FOR nJ := nI + 1 TO 4
            cAux := aMatriz[nI,nJ]
            aMatriz[nJ,nI] := cAux
        Next nJ
    Next nI 

    cAux := aMatriz[1,1]
    aMatriz[1,1] := aMatriz[4,4]
    aMatriz[4,4] := cAux
    cAux := aMatriz[3,3]
    aMatriz[3,3] := cAux

    QOUT(hb_valtoexp(aMatriz[1]))
    QOUT(hb_valtoexp(aMatriz[2]))
    QOUT(hb_valtoexp(aMatriz[3]))
    QOUT(hb_valtoexp(aMatriz[4]))


Return NIL
