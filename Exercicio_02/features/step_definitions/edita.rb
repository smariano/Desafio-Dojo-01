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

Quando("acessar a opção Employee List") do
  	find(:id,'menu_pim_viewEmployeeList').click
end

Quando("selecionar um empregado") do
	find(:id,'empsearch_id').set '063'
	click_button('searchBtn')
end

Quando("editar as do dados do empregado") do
	find(:xpath,'//*[@id="resultTable"]/tbody/tr/td[2]/a').click
	click_button('btnSave')
	find(:id,'personal_optGender_2').click
	select('Single', :from=>'personal[cmbMarital]')
	click_button('btnSave')
  
end

Entao("o cadastro foi editado") do
  	assert_text('Successfully Saved')
end
