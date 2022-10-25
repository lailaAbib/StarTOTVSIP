Function Main()

    local nSal:=0
    local nRea:=0

    ACCEPT("Informe o salário: ") to nSal
    ACCEPT("Informe o reajuste: ") to nRea

    REAJUSTE(nSal,nRea)

RETURN NIL

Function REAJUSTE(nSal,nRea)

    Qout("O salario com reajuste e R$" + Alltrim(STR(val(nSal)*((1+val(nRea)/100)))))

RETURN NIL
