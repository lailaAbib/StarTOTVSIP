Function Main()

    Local soma:=0
    local nNum:=0

    while soma <= 1536
        ACCEPT("Informe o tamanho do arquivo em MB: ") to nNum

        nNum:=Val(nNum)

        soma:= soma + nNum

        if soma >1536
            qout("Você atingiu a capacidade max de armazenamento !")
            exit
        else
            qout("Ainda restam ",Alltrim(STR(1536-soma)),"MB de armazenamento")
        end if
    enddo

RETURN Nil
   


