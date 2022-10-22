Function Main()

    local num:=0
    local nCont:=1
    local num1:=0
    local num2:=0
    local nCont2:=1

    while num!=80

        num := Random(10, 99)% 99 + 1
        if num == 80
            exit
        else
            Qout ("Usando o WHILE: ", ALLtrim(STR(num)))
        nCont++
        end if
    enddo
    do while num1!=80
            num1 := Random(10, 99)% 99 + 1
            if num1 == 80
                exit
            end if
            Qout ("Usando o REPITA: ", ALLtrim(STR(num1)))
            num1++
        end do
    for nCont2:=1 to 100
            num2 := Random(10, 99)% 99 + 1
            if num2 == 80

            else
            Qout ("Usando o FOR: ", ALLtrim(STR(num2)))
            nCont2++
            end if
        next num2

RETURN nil
