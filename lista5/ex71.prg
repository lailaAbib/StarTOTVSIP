Function Main()

     local nFat := 1
    local nNum := 0
    local cGo := "0"

    QOUT("WHILE")
    while !IsDigit(cGo) .OR. val(cGo) <= 0 
        ACCEPT "Informe um numero: " TO cGo
    enddo
    nNum := val(cGo)

    if nNum > 1
        while nNum > 1
            nFat *= nNum
            nNum -= 1
        enddo
    endif 
    QOUT("Fatorial de " + cGo + "! = " + alltrim(str(nFat)))
RETURN Nil
   


