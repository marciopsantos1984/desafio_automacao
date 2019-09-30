#language: pt
Funcionalidade: Obter lista de filmess através da API
    Eu quero obter através da API lista dos filmess
    A fim de testar a API
Cenário: fazer requisição na API
    Dado o endereço da API para obter a lista de filmes
    Quando realizar uma requisição da lista de filmes
    E obter retorno da API
    E exibir o titulo de cada elemento da lista
    Então exibir o titulo de cada elemento da lista que tenham George Lucas como diretor e que Rick McCallum.
    
