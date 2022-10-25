Function Main()

    local nV1:=0
    local nV2:=0

    ACCEPT "Informe o primeiro valor: " to nV1
    ACCEPT "Informe o segundo valor: "  to nV2

    Troca(@nV1, @nV2)

    Qout("Valor 1: ", Alltrim(STR(nV1)))
    Qout("Valor 2: ", Alltrim(STR(nV2)))

RETURN NIL

Function Troca(nV1, nV2)

    local nAux:=0

    nAux:= Val(nV2)
    nV2:= Val(nV1)
    nV1 := nAux
   
RETURN NIL
