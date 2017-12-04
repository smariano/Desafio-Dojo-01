Dado("que esteja na home do site ORANGEHRM") do
  visit('http://opensource.demo.orangehrmlive.com/')
end

Quando("efetuar o acesso por login e senha") do
  find(:id,'txtUsername').set 'Admin'
  find(:id,'txtPassword').set 'admin'
  click_button('btnLogin')
end

Quando("acessar o Menu PIM") do
  find(:id,'menu_pim_viewPimModule').click
end

Quando("acessar a opção Add Employee") do
  find(:id,'menu_pim_addEmployee').click
end

Quando("inserir os dados do empregado") do
  find(:id,'firstName').set 'Desafio'
  find(:id,'middleName').set 'Dojo'
  find(:id,'lastName').set '01'
  find(:id,'employeeId').set '55'
  find(:id,'chkLogin').click
  find(:id,'user_name').set 'testedojo06'
  find(:id,'user_password').set 'Treina@01'
  find(:id,'re_password').set 'Treina@01'
  click_button('btnSave')
end

Entao("efetuarei o cadastro do empregado") do
   assert_text('Personal Details')
end