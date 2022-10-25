function Main()

    local nValor := 0
    local nTempo := 0
    local nTaxa := 0

    ACCEPT "Informe o valor: " to nValor
    ACCEPT "Informe a taxa: " to nTaxa
    ACCEPT "Informe o tempo: " to nTempo

    calcPrestacao(nValor, nTaxa, nTempo)
return nil

function calcPrestacao(nValor, nTaxa, nTempo)

    local nPres:=0

    nPres:= Val(nValor) + (Val(nValor) * (Val(nTaxa)/100) * Val(nTempo))

    Qout("O valor da prestacao: R$", Alltrim(STR(nPres)))

return nil
