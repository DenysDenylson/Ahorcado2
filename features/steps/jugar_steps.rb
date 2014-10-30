Given(/^me encuentro en la pagina para jugar$/) do
	 visit '/'
	fill_in("palabra", :with => "contrasenia")
	click_button("jugar")
end

Then(/^veo los intentos de "(.*?)" del jugador$/) do |intentos|
  last_response.body.should =~ /#{intentos}/m
end