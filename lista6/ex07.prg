Function Main()

    local nNum:=0
    local nExp:=0

    ACCEPT("Informe o base: ") to nNum
    ACCEPT("Informe o expoente: ") to nExp    
    
    POT(nNum,nExp)

RETURN NIL

Function POT (nNum,nExp)

    Qout()
    Qout("O valor da potência é: ", Alltrim(STR(val(nNum)^val(nExp))))

RETURN NIL
