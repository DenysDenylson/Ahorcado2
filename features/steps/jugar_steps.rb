Given(/^me encuentro en la pagina para jugar$/) do
	 visit '/'
	fill_in("palabra", :with => "contrasenia")
	click_button("jugar")
end

Then(/^veo los intentos de "(.*?)" del jugador$/) do |intentos|
  last_response.body.should =~ /#{intentos}/m
end

# ESCENARIO "numero de caracteres de la palabra"
Then(/^veo el numero de caracteres de la palabra$/) do
  last_response.body.should =~ /caracteres/m
end
Then(/^veo "(.*?)" por cada caracter de la palabra$/) do |text|
	last_response.body.should =~ /#{text}/m
end

# ESCENARIO "capos para empezar a jugar"
Then(/^veo el campo para introducir la "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

# ESCENARIO "empezar a jugar"
When(/^cuando lleno el campo "(.*?)" con el valor de "(.*?)"$/) do |nombre, valor|
  fill_in(nombre, :with => valor)
end


# ESCENARIO "validar jugadas"
When(/^si la "(.*?)" ingresada corresponde a la "(.*?)"$/) do |nombre, valor|
  fill_in(nombre, :with => valor)
end

Then(/^reemplazar "(.*?)" por la "(.*?)" dentro de la "(.*?)"$/) do |gion, letra, palabra|
  last_response.body.should =~ /#{letra}/m
end

# ESCENARIO "historial de jugadas"

Then(/^veo el mensaje de "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

# ESCENARIO "guardar historial de jugadas"
# Then(/^guardo el valor de "(.*?)" del campo "(.*?)"$/) do |campo , valor|
#   fill_in(campo, :with => "denys")
# end

# ESCENARIO "mostrar historial de jugadas"
# Then(/^muestro mi hitorial "(.*?)"$/) do |nombre|
#   fill_in(nombre )
#   last_response.body.should =~ /#{nombre}/m
# end
