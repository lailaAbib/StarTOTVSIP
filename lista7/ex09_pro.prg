SET PROCEDURE to ex09.prg

function Main()
    local aArray := {}
    local cP  := "A"
    local nI     := 0
    local nCont  := 1

    while !Empty(cP)
    Qout("*****************************")
        ACCEPT "qualquer coisa: " to cP
        aAdd(aArray, cP)
        nCont++
    enddo
    
    LerDados(aArray)
return nil
