function main()

    local nI

    for nI := 1  TO 100 
        if nI % 3 == 0
        QOUT(Alltrim(Str(nI)))
        endif
    next nI
    QOUT("Fim")
    
RETURN nil
