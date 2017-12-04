#language: pt
#utf-8

@cadastro
Funcionalidade: Cadastrar Empregado
	Eu como administrador do site
	Quero cadastrar um empregado
	Para ter os dados do empregado 

	Cenario: cadastro de empregado
		Dado que esteja na home do site ORANGEHRM
		Quando efetuar o acesso por login e senha
		E acessar o Menu PIM
		E acessar a opção Add Employee
		E inserir os dados do empregado
		Entao efetuarei o cadastro do empregado