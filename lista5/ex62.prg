function main()

    local nCont
    local cChu
    local cFoi
    
    for nCont:= 1 to 2
        ACCEPT "Digite uma letra ou 'SAIR' para parar o programa: " to cChu
        cChu := UPPER(cChu)

        if cChu == "SAIR" 
            nCont := 2
        else 
            nCont := 1
            if Len(cChu) > 1
                QOUT( "insira apenas 1 letra")
                loop
            else
                if (cChu != cFoi )
                    QOUT("letra digitada invalida, tente outra letra")
                    loop
                else
                    cFoi += cChu
                end if
            end if
        end if
    next

    
RETURN nil
