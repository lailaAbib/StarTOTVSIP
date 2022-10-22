
function main()

    local nN1, nN2, nN3, nN4, nMed, nExame


        while !IsDigit(nN1) .OR. val(nN1) < 0 .OR. val(nN1) > 10
            ACCEPT "Digite a primeira nota: " TO nN1
        enddo
        while !IsDigit(nN2) .OR. val(nN2) < 0 .OR. val(nN2) > 10
            ACCEPT "Digite a segunda nota: " TO nN2
        enddo
        while !IsDigit(nN3) .OR. val(nN3) < 0 .OR. val(nN3) > 10
            ACCEPT "Digite a terceira nota: " TO nN3
        enddo
        while !IsDigit(nN4) .OR. val(nN4) < 0 .OR. val(nN4) > 10
            ACCEPT "Digite a quarta nota: " TO nN4
        enddo

    nN1 := val(nN1)
    nN2 := val(nN2)
    nN3 := val(nN3)
    nN4 := val(nN4)

        nMed := ( nN1 + nN2 + nN3 + nN4 ) / 4

        if nMed >= 7
            QOUT("aprovado")
        else
            QOUT("reprovado")
        ACCEPT "Informe a nota do exame: " TO nExame
        nExame := val(nExame)
        nMed := ( nMed + nExame ) / 2
        if nMed >= 5
            QOUT("Aprovado em exame")
        endif
    endif
    QOUT("Aluno fico com a media " + allTrim(str(round(nMed,2))) )

RETURN nil
