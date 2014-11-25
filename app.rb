require "sinatra"

$historial = Hash.new
# $historial = {'denys'=>'denylson','oscar'=>'hurtado'}
# def esta?(palabra, letra)
# 	if palabra =~ /letra/
# 		return true
# 	else
# 		return false
# 	end
# end

# def aparecer_letra(letra, palabra, palabra_secreta)

# 	for i in 0...palabra_secreta.length
# 		if palabra_secreta[i] == letra
# 			palabra[i] = letra
# 		end
# 	end

# 	return palabra
# end

get '/' do
  erb :bienvenida
end

post '/jugar' do
	@palabra_secreta = params[:palabra]
	@palabra_jugar = Array.new(@palabra_secreta.size) { '-' }

	@palabra_jugar = @palabra_jugar.join('')

	@intentos = 0
	erb :jugar
end

post '/validar_letra' do
	@letra = params[:letra]
	@intentos = params[:intentos].to_i
  	@palabra_secreta = params[:palabra]
  	@palabra_jugar = params[:palabra_jugar]

  	if @intentos < 3
  		if @palabra_jugar == @palabra_secreta
  			"GANASTE"
  			$historial[@palabra_secreta] = @palabra_jugar
  			erb :bienvenida

  		else
			 erb :jugar
  		end
  	else	
  		"PERDISTE la palabra secreta es::: #{@palabra_secreta}"
  		$historial[@palabra_secreta] = @palabra_jugar
      erb :bienvenida
  	end
end