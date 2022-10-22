Function Main()

    local nNum := 0
    local nI := 0
    local cResult := ""

    while !IsDigit(nNum) .OR. val(nNum) <= 0 
        ACCEPT "Digite um número: " TO nNum
    enddo
    nNum := val(nNum)

    for nI := 2 to (nNum - 1)
        if nNum % nI == 0
            cResult := " não"
            exit
        endif
    next nI
    
    QOUT(alltrim(str(nNum)) + cResult + " é um numero primo")

RETURN Nil
   


