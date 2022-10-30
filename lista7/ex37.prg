Function Main()
    local aM := {} , aN := {} , aR := {} , nI , nJ
    
    aM := array(10)

    for nI := 1 to 10     
        aM[nI] := array(3)            
        for nJ := 1 to 3             
            aM[nI][nJ] := hb_RandomInt(1 , 9)
        next
    next
    
    QOUT("aM")

    for nI := 1 to 10
        QOUT(hb_valtoexp(aM[nI]))
    next nI
    
    aN := array(3)

    for nI := 1 to 3
        aN[nI] := array(10)            
        for nJ := 1 to 10
            aN[nI][nJ] := hb_RandomInt(1 , 9)
        next
    next
    
    QOUT("aN")

    for nI := 1 to 3
        QOUT(hb_valtoexp(aN[nI]))
    next nI

    aR := array(10)

    for nI := 1 to 10
        aR[nI] := array(10)            
        for nJ := 1 to 10          
            aR[nI][nJ] := calc_produto_matriz(nI , nJ , aM , aN ) 
        next
    next

    for nI := 1 to 10
        QOUT(hb_valtoexp(aR[nI]))
    next nI
 
Return nil

Function calc_produto_matriz(nI , nJ , aM , aN ) 
    local nResult := 0 , nIaux , nJaux
   
    nResult := aM[nI][1] * aN[1][nJ] + aM[nI][2] * aN[2][nJ] + aM[nI][3] * aN[3][nJ] 
    
return nResult
