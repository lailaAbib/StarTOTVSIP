Function main()

  local nI := 101

    QOUT("WHILE")
    while nI != 0
      nI--
      QOUT("[ "+ AllTrim(str(nI)), "]")
    end


    QOUT("FOR/LOOP")
    for nI := 101 to 0 step -1
     if nI = 101
        loop
     endif
        
        QOUT("[ -"+ AllTrim(str(nI)), "]")
    next nI 
       
    QOUT("FOR")

    for nI := 100 to 0 Step -1
        QOUT("[ "+ AllTrim(str(nI)), "]")
    next nI 

RETURN .t.
