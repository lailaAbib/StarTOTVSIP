function main()

    local Dia := 0, Mes := 0, Ano := 0, dDat, Dia_Ano := 0, nBix := .F.

    ACCEPT "Digite o dia: " TO Dia
    ACCEPT "Digite o Mês: " TO Mes
    ACCEPT "Digite o Ano: " TO Ano

    dDat := CToD(Ano + "/" + Mes + "/" + Dia)

    nBix := IsLeap(dDat)

    Dia_Ano := DoY(dDat)

    dDat := DMY(dDat)

    if nBix == .T.
        QOUT("A data " + dDat + " Corresponde ao " + Alltrim(Str(Dia_Ano)) + "°/366 dia do ano!")

    else
        QOUT("A data " + dDat + " Corresponde ao " + Alltrim(Str(Dia_Ano)) + "°/365 dia do ano!")

    end if

RETURN nil
