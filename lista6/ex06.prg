Function Main()

    local nNum:=0

    ACCEPT("Informe o n�mero: ") to nNum

    Troca(nNum)

RETURN NIL

Function Troca (nNum)

    Qout("O dobro de ",nNum, "�:", Alltrim(STR(Val(nNum)*2)))

RETURN NIL
