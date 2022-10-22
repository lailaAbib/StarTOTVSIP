function main()

    local num:=0
    local nCont:=1
    local aux:=0

    for nCont:=1 to 10
        ACCEPT ("Entre com um número: ") to num
        num:=Val(num)
        aux:=aux+num
        Qout("A soma é: ",num)
    next nCont

    Qout("A soma total é: ", Alltrim(STR(aux)))
    
RETURN nil
