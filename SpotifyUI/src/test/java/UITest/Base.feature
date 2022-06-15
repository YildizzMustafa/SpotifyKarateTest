Feature: Spotfy
  Scenario: Spotfy Proje
    Given driver "https://open.spotify.com/"
    When fullscreen()
    #Login.feature isimli feature çağırılıyor
    * def result = call read('Login.feature')
    #HomePage.fature isimli feature çaırılıyor
    * def result = call read('HomePage.feature')
    #PageAddMusic.feature isimli feature çağırılıyor
    * def result = call read('PageAddMusic.feature')

#Tüm Senaryo:
  # Oturum aç butonuna tıklanıyor
  # Username input alanına jsondan çekilen username verisi girdi olarak verilir
  # Password input alanına jsondan çekilen password verisi girdi olarak verilir
  # Giriş yap Butonuna tıklanır
  # Çalma Listesi Oluştura Tıklanır
  # Oluşturulan Çalma Listesinin özelliklerinin düzenlenmesi için isim alanına tıklanır
  # Çalma Listesine İsim atayabilmek için standart tanımlı metin silinir
  # Çalma Listesine yeni bir isim tanımlanır
  # Kaydet Butonuna Tıklanır
  # Şarkı arama alanına tıklanıyori
  # Şarkı arama alanına js dan çekilen müzik ismi verisi giriliyor
  # Şarkıyı Ekle Butonuna Tıklanıyor

