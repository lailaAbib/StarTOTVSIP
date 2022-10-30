function main()
    
    local  aVa:=ARRAY(2,5), aVb:=ARRAY(3,5), aVc:=ARRAY(5,5)
    local nCont:=1, nCont2:=1

    for nCont2:=1 to 2
        for nCont:= 1 to 5
            aVa[nCont2,nCont] := hb_randomint(1,100) 
            aVc[nCont2,nCont]:= aVa[nCont2,nCont]
            Qout( "A [",alltrim(STR(nCont2)),",",alltrim(STR(nCont)),"] = C [",alltrim(STR(nCont2)),",",alltrim(STR(nCont)),"] = C = ", ALLTRIM(STR(aVc[nCont2,nCont])))
        next
        Qout()
    next

    for nCont2:=1 to 3
        for nCont:= 1 to 5
            aVb[nCont2,nCont] := hb_randomint(1,100)
            aVc[(nCont2+2),nCont]:= aVb[nCont2,nCont]   //Como a variável aVc deve prosseguir de (3,1) somei 2 a nCont 
            Qout( "B [",alltrim(STR(nCont2)),",",alltrim(STR(nCont)),"] = C [",alltrim(STR(nCont2+2)),",",alltrim(STR(nCont)),"] = C = ", ALLTRIM(STR(aVc[(nCont2+2),(nCont)])))
        next
        Qout()
    next

RETURN nil
