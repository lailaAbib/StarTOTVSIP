function main()
    
    local  aVA:=ARRAY(50)
    
    VetorCaracteres(aVA)


RETURN nil

function VetorCaracteres(aVA)

    local nCont:=1

    for nCont := 1 TO 50
        aVA[nCont] := CHR(hb_randomint(65,90))
        Qout( nCont,"� = ", aVA[nCont])
    next

RETURN nil
