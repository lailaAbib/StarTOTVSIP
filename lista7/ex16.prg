Function Main()

    local nI := 0
    local aA := {}  
    local aB := {} 
    local aC := {}

    FOR nI := 1 TO 20
        aAdd(aA, (hb_RandomInt(1 , 5)))//Trocar para a quantidade de numeros aleatorios que voce desejar
        aAdd(aB, ( aA[nI] * -1))
    NEXT


    QOUT("Array A: " , hb_valtoexp(aA))
    QOUT("Array B: " , hb_valtoexp(aB))

Return NIL
