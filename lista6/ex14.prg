Function main ()

    local nFV:=150000
    local nPV:=9375
    local nI:=15
    local nT:=1
    

    ValP(nFV,nI,nT)
    ValF(nPV,nI,nT)

return Nil

Function ValP(nFV,nI,nT)

    local nPV:=0

    nVP:= nFV/((1+nI)^nT)

    Qout((alltrim(STR(nPV))))

return nil

Function ValF(nPV,nI,nT)

    local nFV:=0

    nFV:= (nPV*((1+nI)^nT))

    Qout(alltrim(STR(nFV)))

return nil
