Function Main()

    local nNum:=0

    ACCEPT("Informe um n�mero: ") to nNum
    nNum:=val(nNum)

    sucessor(nNum)
    antecessor(nNum)

    QOUT("Sucessor:", sucessor(nNum))
    QOUT("Antecessor:", antecessor(nNum))

RETURN NIL

Function sucessor(nNum)
Return ++nNum

Function antecessor(nNum)
Return --nNum
