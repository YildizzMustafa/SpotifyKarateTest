Feature: Add Track Play List
  Background:
    * def listId2 = call read('IdBul.feature')
    * def data = read('data.json')


  @SenaryoDort
  Scenario: Id si alınan listeye şarkı ekle
    Given header Accept = 'application.json'
    Given header Authorization = data.RequestBodyToken.requestToken
    Given url 'https://api.spotify.com'
    Given path '/v1/playlists/'
    And path listId2.listId
    And path '/tracks'
    And param uris = 'spotify:track:3z8h0TU7ReDPLIbEnYhWZb'
    And request data.RequestBody2.requestBody2
    And method POST
    Then status 201
