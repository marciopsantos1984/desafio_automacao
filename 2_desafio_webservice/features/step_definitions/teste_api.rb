Dado("o endereço da API para obter a lista de filmes") do
    $uri_base = "http://swapi.co/api/films/"
end

Quando("realizar uma requisição da lista de filmes") do
    $response = HTTParty.get($uri_base)
end

Quando("obter retorno da API") do
    puts "code APi #{$response.code}"
    puts "message #{$response.message}"
    puts "count #{$response["count"]}"
end

Quando("exibir o titulo de cada elemento da lista") do
    contador = 0
    tamanho = $response["count"]
    for contador in (0..(tamanho-1)) do
        titulo = $response["results"][contador]["title"]
        puts "titulo #{contador+1} - #{titulo}"
    end
end

Então("exibir o titulo de cada elemento da lista que tenham George Lucas como diretor e que Rick McCallum.") do
    contador = 0
    tamanho = $response["count"]
    for contador in (0..(tamanho-1)) do
        if ($response["results"][contador]["director"] == "George Lucas" and $response["results"][contador]["producer"].include?"Rick McCallum")
            titulo = $response["results"][contador]["title"]
            puts "titulo #{contador+1} - #{titulo}"
        end
    end    
end