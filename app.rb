require "sinatra"

get '/' do
  erb :bienvenida
end

post '/jugar' do
	@palabra_secreta = params[:palabra]
	erb :jugar
end