Function Main()

    local nNum:=0

    ACCEPT("Informe um valor: ") to nNum

    nNum:=val(nNum)

    ehPositivo(nNum)

RETURN NIL

Function ehPositivo(nNum)
    if nNum >= 0 
        QOUT('Positivo!')
    else
        QOUT('Negativo!')
    end if
Return nil
