Feature: Spotfy Calma Listesine Şarkı Ekleme
  Scenario: Spotfy Calma Listesine Şarkı Ekleme

    #data.json data isimli değişkenimize atanıyor
    * def data = read('data.json')
    #Arama alanının görünür olması bekleniyor
    Given waitFor(data.Selector.AddMusicSelector.searchMusic)
    #Şarkı arama alanına tıklanıyor
    When click(data.Selector.AddMusicSelector.searchMusic)
    #Şarkı arama alanına js dan çekilen müzik ismi verisi giriliyor
    And input(data.Selector.AddMusicSelector.searchMusic,data.Music.music.Muzikname)
    #Şarkıyı Ekle Butonuna Tıklanıyor
    And click(data.Selector.AddMusicSelector.addButton)
    #Şarkının eklene bilmesi için bekleniyor
    And waitFor(data.Selector.AddMusicSelector.eklemeKontrol)


#And click(data.Selector.AddMusicSelector.searchMusic)

  #Tüm Senaryo:
      # Şarkı arama alanına tıklanıyor
      #Şarkı arama alanına js dan çekilen müzik ismi verisi giriliyor
      #Şarkıyı Ekle Butonuna Tıklanıyor