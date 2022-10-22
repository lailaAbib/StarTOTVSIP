Function enquanto()

  local nI := 0

    QOUT("WHILE")
    while nI <= 99
      nI++
      QOUT("[ "+ AllTrim(str(nI)), "]")
    end


    QOUT("FOR/LOOP")
    for nI := 0 to 100 step 1
     if nI = 0
        loop
     endif
        
        QOUT("[ "+ AllTrim(str(nI)), "]")
            
       
    next nI
    
    QOUT("FOR")
    for nI := 0 to 100
        QOUT("[ "+ AllTrim(str(nI)), "]")
    next nI 

RETURN .t.
