function Main()

    local nI := 0
    local nCont := 1
  
    while nCont<=50
            Qout ("Usando o WHILE: ", ALLtrim(STR(nI:= (hb_randomint(10,99)))))
            nCont++
        enddo
    do while nCont<=50
            Qout ("Usando o REPITA: ", ALLtrim(STR(nI:= (hb_randomint(10,99)))))
            nCont++
            if nCont >4
                exit
            end if
        end do
    for nCont:= 1 to 50
            Qout ("Usando o FOR: ", ALLtrim(STR(nI:= (hb_randomint(10,99)))))
        next nI

RETURN nil
