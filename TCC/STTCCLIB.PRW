#include 'Protheus.ch'

User Function STTCCLIB()    
Return NIL

//Rotina que ajusta o total de material entregue CONFORME e NÃO CONFORME na tabela ZZ1
User Function ProcRot()
    
    dbSelectArea("ZZ1")
	ZZ1->( dbSetOrder(1) )
	ZZ1->( dbGoTop() )	 //Vai para o topo da tabela      
	
	While !ZZ1->(EOF())

       If ZZ1->ZZ1_TOLERA < 10
            MsgStop("Não há registros para serem processados", "")
       Else
            RotBatch()
       EndIf

            ZZ1->(dbskip()) //Pula p/ o proximo registro

    EndDo

Return NIL

Static Function RotBatch()
       Local aSay           := {}
       Local aButton        := {}
       Local nOpc           := 0
       Local cTitulo        := "Reajustar Total Material"
       Local cDescri1       := "Esta rotina efetua o reajuste do total de material entregue"

       AADD( aSay, cDescri1 )
       AADD( aButton, { 1, .T., {|| nOpc := 1, FechaBatch() }}) //ok
       AADD( aButton, { 2, .T., {|| FechaBatch()}})

       FormBatch( cTitulo, aSay, aButton )

//Processamento 
       If nOpc == 1
            RptStatus({|| Altera()}, "Aguarde...", "Executando rotina...")
       Else
            Return NIL
       EndIf
Return


Static Function Altera()
Local nTotOk    := 0
Local nTotnOk   := 0

    dbSelectArea("ZZ1") //Abre a tabela ZZ1
	ZZ1->( dbSetOrder(1) ) //Seta o indice 1
    ZZ1->( dbGoTop() )	 //Vai para o topo da tabela

    While !ZZ1->(EOF()) .AND. xFilial("ZZ1")+ZZ1->ZZ1_CODIGO+ZZ1->ZZ1_FORNEC+ZZ1->ZZ1_LOJAFO == xFilial("ZZ1")+ZZ1->ZZ1_CODIGO+ZZ1->ZZ1_FORNEC+ZZ1->ZZ1_LOJAFO
    
    	//If xFilial("ZZ1")+ZZ1->ZZ1_CODIGO+ZZ1->ZZ1_FORNEC+ZZ1->ZZ1_LOJAFO //Enquanto n for o fim da ZZ1 e o mesmo fornecedor

	        If ZZ1->ZZ1_TOLERA > 10 //Se a tolerância for maior que 10%
	            nTotnOk := nTotnOk + 1
	        Else
	            nTotOk := nTotOk + 1
	        EndIf   
		//EndIf

        ZZ1->(dbskip()) //Pula p/ o proximo registro

    EndDo

    ZZ1->ZZ1_TOTOK  := nTotOk
    ZZ1->ZZ1_TOTNOK := nTotnOk
    
    ZZ1->( dbCloseArea() )

Return

///FIM da rotina, que ajuste o total de material entregue CONFORME e NÃO CONFORME na tabela ZZ1
///--------------------------------------------------------------------------------------------
///Rotina que exporta TXT da tabela ZZ1
User Function EXPZZ1()    
	           
    Local cDir := 'C:\StartTOTVSIP\Fontes\TCC\'
    Local cArq := 'STTCC-ZZ1.txt'
    Local nHandle := FCreate(cDir+cArq)

        If nHandle < 0
            MsgAlert('Erro ao criar o arquivo', 'ERRO')
        Else

            dbSelectArea("ZZ1") //Abre a tabela ZZ1
            ZZ1->( dbSetOrder(1) ) //Seta o indice 1
            ZZ1->( dbGoTop() )	 //Vai para o topo da tabela

            While !ZZ1->(EOF())
            
                FWrite(nHandle, ZZ1->ZZ1_FILIAL + ' | ' + ZZ1->ZZ1_CODIGO + ' | ' + ZZ1->ZZ1_FORNEC + ' | ' + ZZ1->ZZ1_LOJAFO + ' | ' + ZZ1->ZZ1_CERTIF + ' | ' + CVALTOCHAR(ZZ1->ZZ1_VALCER) + ' | ' + CVALTOCHAR(ZZ1->ZZ1_TOLERA) + ' | ' + CVALTOCHAR(ZZ1->ZZ1_TOTOK) + ' | ' + CVALTOCHAR( ZZ1->ZZ1_TOTNOK) + CRLF)

                ZZ1->(DbSkip())
            EndDo

        EndIf

        If FILE(cDir + cArq)
            MsgInfo('Arquivo criado com sucesso!', 'Alerta')
        Else
            MsgAlert('Não foi possível criar o arquivo', 'Erro')
        EndIf
	
Return

///FIM da rotina que exporta o TXT da tabela ZZ1

///---------------------------------------------

///Rotina que exporta TXT da tabela ZZ2
User Function EXPZZ2()    
	           
    Local cDir := 'C:\StartTOTVSIP\Fontes\TCC\'
    Local cArq := 'STTCC-ZZ2.txt'
    Local nHandle := FCreate(cDir+cArq)

        If nHandle < 0
            MsgAlert('Erro ao criar o arquivo', 'ERRO')
        Else

            dbSelectArea("ZZ2") //Abre a tabela ZZ2
            ZZ2->( dbSetOrder(1) ) //Seta o indice 1
            ZZ2->( dbGoTop() )	 //Vai para o topo da tabela

            While !ZZ2->(EOF())
            
                FWrite(nHandle, ZZ2->ZZ2_FILIAL + ' | ' + ZZ2-> ZZ2_CONFOR + ' | ' + ZZ2->ZZ2_FORNEC  + ' | ' + ZZ2->ZZ2_LOJAFO + ' | ' + CVALTOCHAR(ZZ2->ZZ2_DATA) + ' | ' + CVALTOCHAR(ZZ2->ZZ2_HORA) + ' | ' + CVALTOCHAR(ZZ2->ZZ2_CODPRO) + ' | ' + CVALTOCHAR(ZZ2->ZZ2_QTDOK) + ' | ' + CVALTOCHAR(ZZ2->ZZ2_QTDNOK) + ' | ' + CVALTOCHAR(ZZ2->ZZ2_VLRUNI) + ' | ' + CVALTOCHAR(ZZ2->ZZ2_TOTOK) + ' | ' + CVALTOCHAR(ZZ2->ZZ2_TOTNOK) + CRLF )

                ZZ2->(DbSkip())
            EndDo

        EndIf

        If FILE(cDir + cArq)
            MsgInfo('Arquivo criado com sucesso!', 'Alerta')
        Else
            MsgAlert('Não foi possível criar o arquivo', 'Erro')
        EndIf
	
Return
///FIM da rotina que exporta o TXT da tabela ZZ2
///---------------------------------------------