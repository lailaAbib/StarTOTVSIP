Function Main()

    local cMSG   := ""
    local aCript := {}

    Accept "Digita aqui sua senha: " TO cMSG

    aCript := encrypt(cMSG)
    QOUT("Senha criptografada")
    QOUT(hb_valtoexp(aCript))
    
Return NIL

Function encrypt(MSG)

    local nI     := 0
    local cAux   := ""
    local aCript := {}

    For nI := 1 TO len(MSG)

        cAux := SubStr(MSG, nI, 1)
        cAux := Asc(cAux)-2
        Aadd(aCript, CHR(cAux))

    NEXT nI



Return aCript
