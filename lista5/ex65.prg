Function Main()

local cUserName := "", cSenha := "", cSenha2 := ""


    while  .T.
        ACCEPT "Username: " TO cUserName
        if len(cUserName) < 6
            QOUT("Username deve possuir mais do que 5 caracteres")
        else
            exit
        endif
    enddo
    
    while .T. 
        ACCEPT "Senha: " TO cSenha
        if len(cSenha) < 6
            QOUT("Senha deve possuir mais do que 5 caracteres")
        elseif cSenha := IsDigit(SubStr(cSenha, 1)) .and. isUpper(SubStr(cSenha, 1))
            QOUT("Senha deve possuir ao menos uma letra maiuscula, um digito numerico e um simbolo")
        else
            exit
        endif
    enddo
    
    while .T.
        ACCEPT "Repita a senha: " TO cSenha2
        if cSenha == cSenha2
            exit
        else
            QOUT("Confirmacao da senha diferente da senha")
        endif
    enddo

    QOUT("Usuario e senha cadastrado")

    
return nil
