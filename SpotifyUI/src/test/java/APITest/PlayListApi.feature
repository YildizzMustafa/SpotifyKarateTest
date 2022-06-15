Feature: Spotify API

Background:


@SenaryoBir
  Scenario: Add Play List

  * def data = read('data.json')

    Given header Authorization = data.RequestBodyToken.requestToken
    Given url 'https://api.spotify.com'
    When path '/v1/users/31hdbhs23eghq3nkv3ves3vn3gve/playlists'
    And request data.RequestBody1.requestBody1
    And method POST
    Then status 201


@SenaryoIki
    Scenario: Search Music
    Given header Authorization = data.RequestBodyToken.requestToken
    Given url 'https://api.spotify.com'
    When path '/v1/search'
      And param q = 'remaster%20track:Doxy+artist:Miles%20Davis'
      And param type = 'track'
      And method GET
      Then status 200









