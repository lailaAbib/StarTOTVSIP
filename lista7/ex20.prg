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
            Qout("O caracter",alltrim(nCar),"que foi informado está presente no vetor",alltrim(STR(nCont)))
            AADD(aVB, nCont)
        else
            Qout( nCont,"º = ", aVA[nCont])
        end if    
    next
    Asort(aVB)

    Qout()
    Qout("A primeira posição da letra foi no vetor de posição: ", alltrim(STR(aVB[1])))
    Qout("A ultima posição foi no vetor de posição: ", alltrim(STR(aVB[len(aVB)])))
    
RETURN nil
