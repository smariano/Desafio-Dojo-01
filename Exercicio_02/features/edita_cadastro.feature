#language: pt
#utf-8
@editando
Funcionalidade: Editar Cadastro
	Eu como administrador do site
	Quero editar os dados de um empregado
	Para manter os dados atualizados 

	Cenario: edita empregado
		Dado que esteja na home do site ORANGEHRM
		Quando efetuar o acesso por login e senha
		E acessar o Menu PIM
		E acessar a opção Employee List
		E selecionar um empregado
		E editar as do dados do empregado
		Entao o cadastro foi editado