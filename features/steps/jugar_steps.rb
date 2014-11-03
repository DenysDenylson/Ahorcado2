Given(/^me encuentro en la pagina para jugar$/) do
	 visit '/'
	fill_in("palabra", :with => "contrasenia")
	click_button("jugar")
end

Then(/^veo los intentos de "(.*?)" del jugador$/) do |intentos|
  last_response.body.should =~ /#{intentos}/m
end

# ESCENARIO numero de caracteres de la palabra
Then(/^veo el numero de caracteres de la palabra$/) do
  last_response.body.should =~ /caracteres/m
end
Then(/^veo "(.*?)" por cada caracter de la palabra$/) do |text|
	last_response.body.should =~ /#{text}/m
end
