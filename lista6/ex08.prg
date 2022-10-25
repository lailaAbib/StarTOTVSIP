Function Main()

    local nL1:=0
    local nL2:=0

    ACCEPT("Informe o primeiro lado: ") to nL1
    ACCEPT("Informe o segundo lado: ") to nL2
    
    area(nL1,nL2)

RETURN NIL

Function area(nL1,nL2)

    Qout("O valor da área é: ", Alltrim(STR(val(nL1)*val(nL2))))

RETURN NIL
