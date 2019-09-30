Selenium::WebDriver::Chrome.driver_path="C:/chromedriver.exe"   
name_teste = "teste_"
rand1 = rand(999999)

name_teste = name_teste + rand1.to_s

Dado("o WebSite") do
    @driver = Selenium::WebDriver.for :chrome
    @driver.manage.window.maximize
    @driver.get "http://www.juliodelima.com.br/taskit/"
    
end

Quando("apresentar o campo Ok, I wanna sign up now") do
    @driver.find_element(:xpath, "//a[@href='http://www.juliodelima.com.br/taskit/']")
end

Quando("Acionar o campo Ok, I wanna sign up now") do
    @driver.find_element(:id, "signup").click
end

Quando("apresentar o campo Name") do
    @driver.find_element(:name, "name")
end

Quando("Preencher os campos e acionar o comando Save") do
    @driver.find_element(:name, "name").click
    @driver.find_element(:name, "name").clear
    @driver.find_element(:name, "name").send_keys(name_teste)
    
    @driver.find_element(:name, "login").click
    @driver.find_element(:name, "login").clear
    @driver.find_element(:name, "login").send_keys(name_teste)
    
    @driver.find_element(:name, "password").click
    @driver.find_element(:name, "password").clear
    @driver.find_element(:name, "password").send_keys(name_teste)
    
    @driver.find_element(:name, "password").submit
    
end

Então("o WebSite irá exibir a tela inicial.") do
    @driver.find_element(:xpath, "//a[@href='http://www.juliodelima.com.br/taskit/me']")
    sleep 1
    @driver.quit
end

####################################################################
###########################   CENÝRIO 2   ##########################
####################################################################

Quando("apresentar o campo Sign in") do                                       
    @driver.find_element(:xpath, "//a[@data-target='signinbox']")
end                                                                           
                                                                              
Quando("Acionar o campo Sign in") do                                          
    @driver.find_element(:xpath, "//a[@data-target='signinbox']").click
end                                                                           
                                                                              
Quando("apresentar o campo login") do   
    @driver.find_element(:xpath, "//form[@action='http://www.juliodelima.com.br/taskit/user/signin']").find_element(:name, "login")
end                                                                           
                                                                              
Quando("Preencher os campos e acionar o comando Sign in") do                  
    @driver.find_element(:xpath, "//form[@action='http://www.juliodelima.com.br/taskit/user/signin']").find_element(:name, "login").click
    @driver.find_element(:xpath, "//form[@action='http://www.juliodelima.com.br/taskit/user/signin']").find_element(:name, "login").clear
    @driver.find_element(:xpath, "//form[@action='http://www.juliodelima.com.br/taskit/user/signin']").find_element(:name, "login").send_keys(name_teste)
    
    @driver.find_element(:xpath, "//form[@action='http://www.juliodelima.com.br/taskit/user/signin']").find_element(:name, "password").click
    @driver.find_element(:xpath, "//form[@action='http://www.juliodelima.com.br/taskit/user/signin']").find_element(:name, "password").clear
    @driver.find_element(:xpath, "//form[@action='http://www.juliodelima.com.br/taskit/user/signin']").find_element(:name, "password").send_keys(name_teste)
    
    @driver.find_element(:xpath, "//form[@action='http://www.juliodelima.com.br/taskit/user/signin']").find_element(:name, "password").submit    
end                                                                           
                                                                              
Então("o WebSite Irá exibir a tela inicial.") do                              
    @driver.find_element(:xpath, "//a[@href='http://www.juliodelima.com.br/taskit/me']")
    sleep 1
    @driver.quit
end                                

####################################################################
###########################   CENÝRIO 3   ##########################
####################################################################

Dado("a tela inicial o WebSite") do
    @driver = Selenium::WebDriver.for :chrome
    @driver.manage.window.maximize
    @driver.get "http://www.juliodelima.com.br/taskit/"
    @driver.find_element(:xpath, "//a[@data-target='signinbox']").click
    
    @driver.find_element(:xpath, "//form[@action='http://www.juliodelima.com.br/taskit/user/signin']").find_element(:name, "login").click
    @driver.find_element(:xpath, "//form[@action='http://www.juliodelima.com.br/taskit/user/signin']").find_element(:name, "login").clear
    @driver.find_element(:xpath, "//form[@action='http://www.juliodelima.com.br/taskit/user/signin']").find_element(:name, "login").send_keys(name_teste)

    @driver.find_element(:xpath, "//form[@action='http://www.juliodelima.com.br/taskit/user/signin']").find_element(:name, "password").click
    @driver.find_element(:xpath, "//form[@action='http://www.juliodelima.com.br/taskit/user/signin']").find_element(:name, "password").clear
    @driver.find_element(:xpath, "//form[@action='http://www.juliodelima.com.br/taskit/user/signin']").find_element(:name, "password").send_keys(name_teste)

    @driver.find_element(:xpath, "//form[@action='http://www.juliodelima.com.br/taskit/user/signin']").find_element(:name, "password").submit 
    @driver.find_element(:xpath, "//a[@href='http://www.juliodelima.com.br/taskit/me']")
end

Quando("apresentar o campo Let's add some tasks!") do
    @driver.find_element(:xpath, "//a[@href='http://www.juliodelima.com.br/taskit/task']")
end

Quando("Acionar o campo  Let's add some tasks!") do
    @driver.find_element(:xpath, "//a[@href='http://www.juliodelima.com.br/taskit/task']").click
end

Quando("Apresentar o campo +Add a task") do
    @driver.find_element(:xpath, "//button[@data-target='addtask']")
end

Quando("Acionar o campo +Add a task") do
    @driver.find_element(:xpath, "//button[@data-target='addtask']").click
end

Quando("apresentar o campo title") do
    @driver.find_element(:name, "title")
end

Quando("Preencher os campos da task e acionar o comando Save") do
    @driver.find_element(:name, "title").click
    @driver.find_element(:name, "title").clear
    @driver.find_element(:name, "title").send_keys("task " + name_teste, :tab)
    # DATE
    @driver.find_element(:xpath, "//div[@class='picker__holder']").find_element(:xpath, "//div[@class='picker__frame']").find_element(:xpath, "//div[@class='picker__wrap']").find_element(:xpath, "//div[@class='picker__box']").find_element(:xpath, "//div[@class='picker__container__wrapper']").find_element(:xpath, "//div[@class='picker__footer']").find_element(:xpath, "//button[@class='btn-flat picker__today waves-effect']")
    @driver.action.click(@driver.find_element(:xpath, "//div[@class='picker__holder']").find_element(:xpath, "//div[@class='picker__frame']").find_element(:xpath, "//div[@class='picker__wrap']").find_element(:xpath, "//div[@class='picker__box']").find_element(:xpath, "//div[@class='picker__container__wrapper']").find_element(:xpath, "//div[@class='picker__footer']").find_element(:xpath, "//button[@class='btn-flat picker__today waves-effect']")).perform
    @driver.find_element(:xpath, "//div[@class='picker__holder']").find_element(:xpath, "//div[@class='picker__frame']").find_element(:xpath, "//div[@class='picker__wrap']").find_element(:xpath, "//div[@class='picker__box']").find_element(:xpath, "//div[@class='picker__container__wrapper']").find_element(:xpath, "//div[@class='picker__footer']").find_element(:xpath, "//button[@class='btn-flat picker__close waves-effect']")
    @driver.action.click(@driver.find_element(:xpath, "//div[@class='picker__holder']").find_element(:xpath, "//div[@class='picker__frame']").find_element(:xpath, "//div[@class='picker__wrap']").find_element(:xpath, "//div[@class='picker__box']").find_element(:xpath, "//div[@class='picker__container__wrapper']").find_element(:xpath, "//div[@class='picker__footer']").find_element(:xpath, "//button[@class='btn-flat picker__close waves-effect']")).perform
    # TIME
    @driver.find_element(:name, "text").send_keys(:shift,:tab)
    @driver.find_element(:xpath, "//*[@id='addtask']/div[1]/div[3]/div[2]/div/div/div/div/div/div[2]/div[2]/button[3]").click
    # TEXT
    @driver.find_element(:name, "text").send_keys("task " + name_teste)
    # SAVE
    @driver.find_element(:xpath, "//*[@id='addtask']/div[2]/a").click
    sleep 1
end

Então("o WebSite irá exibir a tela.") do
    @driver.find_element(:xpath, "//a[@href='http://www.juliodelima.com.br/taskit/task']")
    @driver.find_element(:xpath, "//*[@id='tasklist']/li[1]")
    sleep 1
    @driver.quit
end

####################################################################
###########################   CENÝRIO 4   ##########################
####################################################################

Então("o WebSite irá exibir a tela com a task.") do
    @driver.find_element(:xpath, "//a[@href='http://www.juliodelima.com.br/taskit/task']")
    @driver.find_element(:xpath, "//*[@id='tasklist']/li[1]")
    sleep 1
    @driver.quit
end