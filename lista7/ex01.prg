Function Main()

    local nI

         ACCEPT("Digite o número do dia da semana: [1 a 7] ") to nI
            nI:=Val(nI)

    Semana(nI)

return nil

Function Semana(nI)

    local aX:={}
    
    if nI >= 1 .and. nI <= 7
        aX:={"Domingo","Segunda","Terca","Quarta","Quinta","Sexta","Sabado"}

        Qout(aX[nI])
    else
        Qout("Valor nao existe! ")
    endif

        wait 'Aperte qualquer botão para sair'

Return nil
