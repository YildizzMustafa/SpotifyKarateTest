Feature: Spotfy Calma Listesi Ekleme
  Scenario: Spotfy Calma Listesi Ekleme
    #Json dosyası data değişkenine atanıyor
    * def data = read('data.json')
    #Çalma Listesi Oluşturma elementinin görünür olması bekleniyor
    Given waitFor(data.Selector.HomePageSelector.calmaListesiOlustur)
    #Çalma Listesi Oluştura Tıklanır
    When click(data.Selector.HomePageSelector.calmaListesiOlustur)
    #Oluşturulan Çalma Listesinin özelliklerinin düzenlenmesi için isim alanına tıklanır
    And click(data.Selector.HomePageSelector.nameClick)
    #Çalma Listesine İsim atayabilmek için standart tanımlı metin silinir
    And clear(data.Selector.HomePageSelector.nameBlok)
    #Çalma Listesine yeni bir isim tanımlanır
    And input(data.Selector.HomePageSelector.nameBlok,data.CalmaListesiAdi.listeAdi.ad)
    #Kaydet Butonuna Tıklanır
    And click(data.Selector.HomePageSelector.kaydetButton)

    #Tüm Senaryo:
      #Çalma Listesi Oluştura Tıklanır
      #Oluşturulan Çalma Listesinin özelliklerinin düzenlenmesi için isim alanına tıklanır
      #Çalma Listesine İsim atayabilmek için standart tanımlı metin silinir
      #Çalma Listesine yeni bir isim tanımlanır
      #Kaydet Butonuna Tıklanır