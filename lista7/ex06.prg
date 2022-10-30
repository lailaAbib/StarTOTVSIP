Function Main()

    local aArray := {}
    local nI     := 0

    FOR nI := 30 TO 1 STEP -1
        aAdd(aArray, nI)
    NEXT

    QOUT(hb_valtoexp(aArray))

Return nil
