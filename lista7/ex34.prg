Function Main()

     local nI, nJ, cAux, cResultado, cOperacao
    local aMorse := {{ "A" , ".-"} , ;
    { "B" , "-..."} , ;
    { "C" , "-.-."} , ;
    { "D" , "-.."} , ;
    { "E" , "."} , ;
    { "F" , "..-."} , ;
    { "G" , "--."} , ;
    { "H" , "...."} , ;
    { "I" , ".."} , ;
    { "J" , ".---"} , ;
    { "K" , "-.-"} , ;
    { "L" , ".-.."} , ;
    { "M" , "--"} , ;
    { "N" , "-."} , ;
    { "O" , "---"} , ;
    { "P" , ".--."} , ;
    { "Q" , "--.-"} , ;
    { "R" , ".-."} , ;
    { "S" , "..."} , ;
    { "T" , "-"} , ;
    { "U" , "..-"} , ;
    { "V" , "...-"} , ;
    { "W" , ".--"} , ;
    { "X" , "-..-"} , ;
    { "Y" , "-.--"} , ;
    { "Z" , "--.."} , ;
    { "1" , ".----"} , ;
    { "2" , "..---"} , ;
    { "3" , "...--"} , ;
    { "4" , "....-"} , ;
    { "5" , "....."} , ;
    { "6" , "-...."} , ;
    { "7" , "--..."} , ;
    { "8" , "---.."} , ;
    { "9" , "----."} , ;
    { "0" , "-----"} , ;
    { "." , ".-.-.-"} , ;
    { "?" , "..--.."} , ;
    { "/" , "-..-."} , ;
    { "-" , "-....-"} , ;
    { "(" , "-.--."} , ;
    { ")" , "-.--.-"} , ;
    { " " , "/"}}

    While .T.

        QOUT("digite (ESC) para sair")
        QOUT("(1) Digitar a palavra")
        QOUT("(2) Digitar Codigo Morse")

        ACCEPT "Operacao  = " to cOperacao

        if cOperacao == "1"
            ACCEPT "Texto = " to cAux
            cAux := Upper(cAux)

            cResultado := " "

            for nJ := 1 to len(cAux)  
                for nI := 1 to len(aMorse) 
                    if aMorse[nI][1] == SubStr(cAux, nJ , 1)
                        cResultado += aMorse[nI][2] + "  "
                    endif
                next nI
            next nJ

            qout("Morse >> " + cResultado)

        elseif cOperacao == "2"

            ACCEPT "Digite o Codigo Morse = " to cAux

            for nI := 1 to len(aMorse) 
                if aMorse[nI][2] == cAux
                    qout(cAux + " >> '" + aMorse[nI][1] + "'" )
                endif
            next nI
            
        elseif upper(cOperacao) == "ESC"
            exit    
        endif
    enddo
    
Return nil
