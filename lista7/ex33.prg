Function Main()

    local nVal := 0
    Local nPag := 0
    local nTroco  := ""

            Accept "insira aqui o valor da compra: " TO nVal 

            Accept "insira aqui o valor do pagamento: " TO nPag 

        nTroco := Val(nPag) - Val(nVal)

    Troco(nTroco)

Return nil

function Troco(nTroco)

    local aTroco := {{"200.00", 0},{"100.00", 0},{"050.00", 0},{"020.00", 0},{"010.00", 0},{"005.00", 0},{"002.00", 0},{"001.00", 0},{"000.50", 0},{"000.25", 0},{"000.10", 0},{"000.05", 0},{"000.01", 0}}
    local nI := 0

    if nTroco / 200 >= 1
        aTroco[1][2] := int(nTroco / 200)
        nTroco %= 200
    elseif nTroco / 100 >= 1
        aTroco[2][2] := int(nTroco / 100)
        nTroco %= 100
    
    elseif nTroco / 50 >= 1
        aTroco[3][2] := int(nTroco / 50)
        nTroco %= 50
    
    elseif nTroco / 20 >= 1
        aTroco[4][2] := int(nTroco / 20)
        nTroco %= 20
    
    elseif nTroco / 10 >= 1
        aTroco[5][2] := int(nTroco / 10)
        nTroco %= 10
    
    elseif nTroco / 5 >= 1
        aTroco[6][2] := int(nTroco / 5)
        nTroco %= 5
    
    elseif nTroco / 2 >= 1
        aTroco[7][2] := int(nTroco / 2)
        nTroco %= 2
    
    elseif nTroco / 1 >= 1
        aTroco[8][2] := int(nTroco / 1)
        nTroco %= 1
    
    elseif nTroco / 0.5 >= 1
        aTroco[9][2] := int(nTroco / 0.5)
        nTroco %= 0.5
    
    elseif nTroco / 0.25 >= 1
        aTroco[10][2] := int(nTroco / 0.25)
        nTroco %= 0.25
    
    elseif nTroco / 0.1 >= 1
        aTroco[11][2] := int(nTroco / 0.1)
        nTroco %= 0.1
    
    elseif nTroco / 0.05 >= 1
        aTroco[12][2] := int(nTroco / 0.05)
        nTroco %= 0.05
    
    elseif nTroco / 0.01 >= 1
        aTroco[13][2] := int(nTroco / 0.01)
        nTroco %= 0.01
    else
        QOUT("Exit")
    endif
    
    for nI := 1 to 7
        qout("Notas de   " +aTroco[nI][1]+ " = " + allTrim(str(aTroco[nI][2])))
    next nI
    for nI := 8 to 13
        qout("Moedas de " +aTroco[nI][1]+ " = " + allTrim(str(aTroco[nI][2])))
    next nI

Return nil
