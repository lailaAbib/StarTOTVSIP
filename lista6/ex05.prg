Function Main()

    local nDividendo:=0
    local nDivisor:=0
    

    ACCEPT "Informe o dividendo: "  to nDividendo
    ACCEPT "Informe o divisor: "  to nDivisor

    CalcQuo(@nDividendo, @nDivisor)
    CalcRes(@nDividendo, @nDivisor)

RETURN NIL

Function CalcQuo(nDividendo, nDivisor)
    local nQuo := 0

    nQuo := (Val(nDividendo) / Val(nDivisor))

    Qout("------------------------------")

    Qout("O valor do quociente é: ", Alltrim(STR(nQuo)))

    Qout("------------------------------")
Return nil

Function CalcRes(nDividendo, nDivisor)
    local nRes := 0

    nRes := (Val(nDividendo) % Val(nDivisor))

    Qout("O valor do resto é: ", Alltrim(STR(nRes)))
Return nil
