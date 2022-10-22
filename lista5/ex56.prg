function main()

    Local nI
    local nNum
    local nLimi 
    local cResult := ""

        ACCEPT "Digite um numero: " to nNum 
        ACCEPT "Digite um limite para o numero: " to nLimi 

    nNum := val(nNum)
    nLimi := val(nLimi)

        QOUT("multiplos [" + Alltrim(str(nNum)) + "] existentes entre 1 e " + Alltrim(str(nLimi)))

    for nI := nNum to nLimi step nNum
        cResult += Alltrim(str(nI)) 
        if  nI != nLimi
            cResult += ", "
        endif
    next nI

    QOUT(cResult)

RETURN nil
