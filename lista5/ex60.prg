function main()

    local num:=0, nCont:=1, aux:=0, qtd:=0
    Local cpar:=""

    ACCEPT ("Entre com um número: ") to qtd
    ACCEPT ("Par ou impar? P/I ") to cpar

    qtd:=Val(qtd)

    for nCont:=1 to qtd

        num := (hb_randomint(1,99))

        if cpar == "P" .and. num %2==0
            aux:=aux+num
            Qout("A soma é: ",Alltrim(STR(num)))

        elseif cpar == "I" .and. num %2!=0
            aux:=aux+num
            Qout("A soma é: ",Alltrim(STR(num)))
        else
            nCont--
        end if

    next nCont

    Qout("A soma total é: ", Alltrim(STR(aux)))
    
RETURN nil
