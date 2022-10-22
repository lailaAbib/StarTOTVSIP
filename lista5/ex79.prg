Function Main()

    Local nI       := 0
    local nTamanho := 60
    local nPin 
    
    while !IsDigit(nPin) .OR. val(nPin) <= 0 
        ACCEPT "Informe um numero PIM: " TO nPin
    enddo
    nPin := val(nPin)

    for nI := 1 to nTamanho
        if nI % nPin == 0
            QOUT("PIN")  
            Tone(1500, 10)
        else
            QOUT(Alltrim(str(nI)))
        endif
    next nI 
    
RETURN Nil
   


