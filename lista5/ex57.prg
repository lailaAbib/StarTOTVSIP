function main()

    local num:=0, div:=0, soma, nCont1:=1, nCont2:=0, num2:=0

        ACCEPT("Insira um valor: ")to div
        ACCEPT("Insira a quantidade: ")to nCont2
    
    div:=Val(div)
    nCont2:=Val(nCont2)

    Qout("WHILE")
    while nCont1 <= nCont2

        num := (hb_randomint(1,99))
        soma:= (num % div)

        if soma == 0
            Qout ("Valor gerado: [", ALLtrim(STR(num)), "] nº: ", ALLtrim(STR(nCont1)))
            nCont1++
        end if
    enddo
    
    Qout("FOR")
    for nCont1:=1 to nCont2 STEP 1

        num2 := (hb_randomint(1,99))
        soma:= (num2 % div)

        if soma == 0
            Qout ("Valor gerado: [", ALLtrim(STR(num2)), "] nº: ", ALLtrim(STR(nCont1)))
        else
            nCont1--
        end if

    next nCont1 == nCont2
    
RETURN nil
