function main()
    
    local nCar:=""
    
    ACCEPT("Informe uma letra: ") to nCar
    ncar:=upper(ncar)

    VetorCaracteres( nCar)

RETURN nil

function VetorCaracteres(nCar)

    local nCont:=1,aVA:=ARRAY(50), aVB:={}

    for nCont := 1 TO 50
        aVA[nCont] := CHR(hb_randomint(65,90))

        if nCar == aVA[nCont]
            Qout("O caracter",alltrim(nCar),"que foi informado est� presente no vetor",alltrim(STR(nCont)))
            AADD(aVB, nCont)
        else
            Qout( nCont,"� = ", aVA[nCont])
        end if    
    next
    Asort(aVB)

    Qout()
    Qout("A primeira posi��o da letra foi no vetor de posi��o: ", alltrim(STR(aVB[1])))
    Qout("A ultima posi��o foi no vetor de posi��o: ", alltrim(STR(aVB[len(aVB)])))
    
RETURN nil
