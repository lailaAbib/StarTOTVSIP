Function Main()

    local nRandon := 0
    local nValor := 0
    local nTent := 0
    local nRandon := HB_RandomInt(0,100)


    while .T.
        ACCEPT "Informe um valor: " TO nValor
        nTent++
        if VAL(nValor) == nRandon
            QOUT("ACERTOU !!!")
            if nTent <= 5
                QOUT("Voce e muito bom, acertou em " + AllTrim(str(nTent)) + " tentativas")
            elseif nTent <= 9
                QOUT("Voce e bom, acertou em " + AllTrim(str(nTent)) + " tentativas")
            elseif nTent <= 13
                QOUT("Voce e mediano, acertou em " + AllTrim(str(nTent)) + " tentativas")
            else
                QOUT("Voce e muito fraco, acertou em " + AllTrim(str(nTent)) + " tentativas")
            endif
            exit
        elseif VAL(nValor) > nRandon
            QOUT("Tente um numero menor")
        else
            QOUT("Tente um numero maior")
        endif
    enddo

RETURN Nil
   


