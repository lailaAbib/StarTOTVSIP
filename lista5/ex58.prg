function main()

    local num:=0
    local nCont:=1
    local aux:=0

    for nCont:=1 to 10
        ACCEPT ("Entre com um n�mero: ") to num
        num:=Val(num)
        aux:=aux+num
        Qout("A soma �: ",num)
    next nCont

    Qout("A soma total �: ", Alltrim(STR(aux)))
    
RETURN nil
