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
