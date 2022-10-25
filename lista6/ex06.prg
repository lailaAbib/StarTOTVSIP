Function Main()

    local nNum:=0

    ACCEPT("Informe o número: ") to nNum

    Troca(nNum)

RETURN NIL

Function Troca (nNum)

    Qout("O dobro de ",nNum, "é:", Alltrim(STR(Val(nNum)*2)))

RETURN NIL
