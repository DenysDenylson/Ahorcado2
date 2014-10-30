Given(/^Me encuentro en la pagina principal$/) do
	visit '/'
end

Then(/^Veo el mensade "(.*?)"$/) do |arg1|
end

# escenario palabra
Then(/^veo el campo para "(.*?)"$/) do |palabra|
  last_response.body.should =~ /#{palabra}/m
end

Then(/^veo el boton "(.*?)"$/) do |jugar|
  last_response.body.should =~ /#{jugar}/m
end

# ESCENARIO INGRESO LA PALABRA SECRETA
When(/^cuando lleno el campo "(.*?)" con "(.*?)"$/) do |campo, valor|
	fill_in(campo, :with => valor)
end


Then(/^hago click en el boton "(.*?)"$/) do |boton|
  click_button(boton)
end

Then(/^veo el mensaje "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

