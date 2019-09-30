#language: pt
Funcionalidade: Criar um usuário e realizar login, criar a “task” e depois visualizar.
    Eu quero criar um usuário e realizar login, criar a “task” e depois visualizar.
    A fim de testar o website .
Cenário: criando usuário no WebSite
    Dado o WebSite
    Quando apresentar o campo Ok, I wanna sign up now
    E Acionar o campo Ok, I wanna sign up now
    E apresentar o campo Name
    E Preencher os campos e acionar o comando Save
    Então o WebSite irá exibir a tela inicial.
Cenário: realizando login do usuário no WebSite
    Dado o WebSite 
    Quando apresentar o campo Sign in
    E Acionar o campo Sign in
    E apresentar o campo login
    E Preencher os campos e acionar o comando Sign in
    Então o WebSite Irá exibir a tela inicial.
Cenário: criando a "task" no WebSite
    Dado a tela inicial o WebSite 
    Quando apresentar o campo Let's add some tasks!
    E Acionar o campo  Let's add some tasks!
    E Apresentar o campo +Add a task
    E Acionar o campo +Add a task
    E apresentar o campo title
    E Preencher os campos da task e acionar o comando Save
    Então o WebSite irá exibir a tela.
Cenário: visualizando a "task" no WebSite
    Dado a tela inicial o WebSite 
    Quando apresentar o campo Let's add some tasks!
    E Acionar o campo  Let's add some tasks!
    Então o WebSite irá exibir a tela com a task.    
