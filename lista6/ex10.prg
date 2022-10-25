Function Main()

    local nNum:=0
    local nCont:=1
    local aux:=0

    for nCont:=1 to 3
        ACCEPT("Informe o Valor: ") to nNum
        nNum:=val(nNum)
        aux+=nNum
    next

    MEDIA(aux)

RETURN NIL

Function MEDIA(aux)

    Qout("A média é " + Alltrim(STR(aux/3)))

RETURN NIL
