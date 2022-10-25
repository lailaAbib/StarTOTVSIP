Function Main()

    local nN:=0
    local nSoma:=0

    ACCEPT "Informe um valor: " to nN

    nSoma:= Calc(nN)

    Qout("O somatorio e: ", Alltrim(STR(nSoma)))
    
RETURN NIL

Function Calc(nN)

    local nI:=1
    local nAux:=0

    for nI:=1 to Val(nN)
        nAux+=nI
    next
    
RETURN nAux
