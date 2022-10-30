Function Main()

    local aArray := {}
    local nI     := 0

    for nI := 1 to 10
        aAdd(aArray, ( hb_RandomInt(1 , 10) * 2 ))
    next

    QOUT(hb_valtoexp(aArray))

Return nil
