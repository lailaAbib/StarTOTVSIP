function main()
    
    local  aVA:={}
    local nCont:=1, aux:=0

    for nCont:=1 to 12
        aux:=round(Random()%99,0)
        AADD(aVA, aux)
    next
 
    Asort(aVA)
    ? hb_ValToExp(aVA)

return nil
