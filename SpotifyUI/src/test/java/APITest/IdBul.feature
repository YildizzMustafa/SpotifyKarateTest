Feature: Idi Bul
  Background:

Scenario: PlayList Listele ve Id al

  * def data = read('data.json')

  Given header Authorization = data.RequestBodyToken.requestToken
  Given url 'https://api.spotify.com'
  When path '/v1/users/31hdbhs23eghq3nkv3ves3vn3gve/playlists'
  And method GET
  And param limit = '1'
  And param offset = '1'
  And def listName = response.items[0].name
  * def listId = response.items[0].id
  Then status 200

