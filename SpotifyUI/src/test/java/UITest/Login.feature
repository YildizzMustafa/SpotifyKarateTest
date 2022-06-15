Feature: Spotfy Oturum Açma
  Scenario: Spotfy Login

    #data.json data isimli değişkenimize atanıyor
    * def data = read('data.json')
    #Oturum aç butonuna tıklanıyor
    Given click(data.Selector.LoginSelector.oturumAcButton)
    #Username input alanı bekleniyor
    When waitFor(data.Selector.LoginSelector.userName)
    #Username input alanına jsondan çekilen username verisi girdi olarak verilir
    And input(data.Selector.LoginSelector.userName,data.LoginData.userBilgi.username)
    #Password input alanına jsondan çekilen password verisi girdi olarak verilir
    And input(data.Selector.LoginSelector.password,data.LoginData.userBilgi.password)
    #Giriş yap Butonuna tıklanır
    And click(data.Selector.LoginSelector.loginButton)

#Tüm Senaryo:
  #Oturum aç butonuna tıklanıyor
  #Username input alanına jsondan çekilen username verisi girdi olarak verilir
  #Password input alanına jsondan çekilen password verisi girdi olarak verilir
  #Giriş yap Butonuna tıklanır