Function Main()

    local cSexo   := "", nAlt := 0, nCont  := 0, nContM := 0, nCOntF := 0 
    local nSoma := 0, nMediaF := 0, nMediaM := 0, nI := 0
    local aAltM  := {}, aAltF  := {}

    while nCont <= 2
        ACCEPT "Digite seu genero (M / F) : " to cSexo
        cSexo := UPPER(cSexo)
            if cSexo = "M"
                ACCEPT "Digite sua altura: " to nAlt
                nAlt := val(nAlt)
                aAdd(aAltM, nAlt)
                nContM++
            else
                ACCEPT "Digite sua altura: " to nAlt
                nAlt := val(nAlt)
                aAdd(aAltF, nAlt)
                nContF++
            endif
        nCont++
    enddo

        nSoma := 0
        For nI := 1 to len(aAltM)
            nSoma += aAltM[nI]
        Next
        nMediaM := nSoma / nContM

        nSoma := 0
        For nI := 1 to len(aAltF)
            nSoma += aAltF[nI]
        Next
        nMediaF := nSoma / nContF

        QOUT("O total de homens �: ", alltrim(str(nContM)) , " e o total de mulhere �: " , alltrim(str(nContF)))
        QOUT("A m�dia de altura dos homens do grupo �: " , nMediaM)
        QOUT("A m�dia de altura das mulheres do grupo �: " , nMediaF)

RETURN Nil
   


