Function Main()

    local cNota := ""
    local nSomaTotal := 0
    local nTotalAlunos := 0
    local nMedia := 0
    local nMaiorNota := -1
    local nMenorNota := 666

    DO WHILE nTotalAlunos < 15 
        Accept "Informar nota: " to cNota
            
        IF cNota == "" 
            Loop
        ENDIF

        IF IsDigit(cNota)
            IF val(cNota) > nMaiorNota
                nMaiorNota := val(cNota)
            ENDIF
            
            IF val(cNota) < nMenorNota
                nMenorNota := val(cNota)
            ENDIF

            nSomaTotal := nSomaTotal + val(cNota)
            nTotalAlunos := nTotalAlunos + 1
        ENDIF
        
    ENDDO

    nMedia := nSomaTotal / nTotalAlunos
    
    qout("Total de alunos: ", nTotalAlunos)
    qout("Media das notas: ", nMedia)
    qout("Maior nota: ", nMaiorNota)
    qout("Menor nota: ", nMenorNota)


RETURN Nil
   


