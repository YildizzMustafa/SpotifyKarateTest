Feature: Spotfy Api Testi
  Background:

  Scenario: Spotfy Proje Api Testi
    * def data = read('data.json')

    Given header Authorization = data.RequestBodyToken.requestToken

    * def result = call read('PlayListApi.feature')
    * def result = call read('AddTrack.feature')

