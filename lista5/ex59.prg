function main()

    local nCont := 0
    local cCont := ""
    local nI 
    local nMax := 10
    
    QOUT("FOR")
    for nI := 0 to (nMax - 1)
        if nI % 2 == 0
            nCont += nI
            cCont += Alltrim(str(nI)) + " "
        endif
    next nI

    QOUT("soma dos "+ Alltrim(Str(nMax)) + " primeiros numeros naturais pares")
    QOUT(cCont +"e = " + Alltrim(Str(nCont)))
    
RETURN nil
