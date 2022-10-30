function main()
    
    local aVA:=ARRAY(12)

    VetorCaracteres(aVA)

RETURN nil

function VetorCaracteres(aVA)

    local nCont:=1

    for nCont := 1 TO 12
        aVA[nCont] := CHR(hb_randomint(97,122))
        Qout(alltrim(STR(nCont)),"º  -  ", alltrim(aVA[nCont]))
    next

RETURN nil
