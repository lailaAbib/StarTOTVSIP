Function Main()


    local cNome := "", cSex := ""

    ACCEPT "Informe seu nome " TO cNome

    while cNome == ""
        QOut("O nome deve ser informado!")
        ACCEPT "Informe seu nome " TO cNome
    enddo

    ACCEPT "Informe seu sexo (F/M) " TO cSex
    cSex := UPPER(cSex)

    if(cSex = "F")
        QOut(cNome, " Sra. " )

    elseif(cSex = "M")
        QOut(cNome, " Sr. " )

    end if

RETURN nil
