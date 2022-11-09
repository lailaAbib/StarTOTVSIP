#include 'rwmake.ch'   
#include 'Protheus.ch'       
#include 'msobjects.ch'

User Function STTCC001()
    
	dbSelectArea('ZZ1')
	dbSetOrder(1)

	AxCadastro("ZZ1" , "Controle de Fornecimento" , nil, nil)

Return