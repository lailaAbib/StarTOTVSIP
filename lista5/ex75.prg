Function Main()

    local nI
    local nSoma := 0
    local nGrao := 1

   QOUT("FOR")
    for nI := 1 to 64
        nSoma += nGrao
        nGrao *= 2
    next nI
    QOUT("O total: " + str(nSoma))

RETURN Nil
   


