Function Main()

   local aNum := {}
    local nI 

    for nI := 1 to 10
        Aadd(aNum, nI)
    next
    
    for nI := len(aNum) to 1 step -1
        QOUT(aNum[nI])
    next

Return nil
