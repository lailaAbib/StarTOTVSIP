Function Main()

   local aMeses := {"Janeiro", "Fevereiro", "Marco", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}
    local nMes := 0

    
        ACCEPT "Informe o numero do Mes [1 a 12]: " to nMes

        nMes := val(nMes)

        if nMes == 2  
            ASCAN(aMeses, nMes)
            Qout("O Mes ", aMeses[nMes], " possui 28 dias")
        elseif nMes == 4 .and. nMes == 6 .and. nMes == 9 .and. nMes == 11
            Qout("O Mes ", aMeses[nMes], " possui 30 dias")  
        else
            Qout("O Mes ", aMeses[nMes], " possui 31 dias")
        endif

    
    

Return nil
