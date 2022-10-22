Function Main()

    Function Main()

    local cCartao := ""
    local nTotal := 0
    local lContinuar := .T. 

    DO WHILE (lContinuar)
        ACCEPT "Coloque a letra do seu cartao: " TO cCartao

        IF (cCartao == "F" .or. cCartao == "f")
            lContinuar := .F.

        ELSEIF (cCartao == "O" .or. cCartao == "P" .or. cCartao == "B")
            nTotal := nTotal +1
        ENDIF

    ENDDO

    QOUT("O NUMERO DE MEDALHAS EH:" , nTotal)

Return NIL

RETURN Nil
   


