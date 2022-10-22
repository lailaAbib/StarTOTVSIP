Function Main()

    Local nCartao := 0
    Local nMaior := -555555555
    Local nMenor := 333333333
    local nSoma := 0
    local nAlunos := 0
    local nMedia := 0


    while .T.
        ACCEPT "Digite a nota ou digite 'ESC' para encerrar o programa: " TO nCartao
        nCartao := UPPER(nCartao)
        if nCartao == "ESC" 
            exit
        elseif IsDigit(nCartao)
            if Val(nCartao) > nMaior
                nMaior := Val(nCartao)
            endif
            if Val(nCartao) < nMenor
                nMenor := Val(nCartao)
            endif
            nSoma += val(nCartao)
            nAlunos++
        else
            QOUT("valor invalido")
        endif
    enddo
    nMedia := nSoma / nAlunos

    QOUT("")
    QOUT("Mota maior é :   " + AllTrim(str(nMaior)))
    QOUT("Nota menor é :   " + AllTrim(str(nMenor)))
    QOUT("Total de alunos são : " + AllTrim(str(nAlunos)))
    QOUT("Média é: " + AllTrim(str(nMedia)))

RETURN Nil
   


