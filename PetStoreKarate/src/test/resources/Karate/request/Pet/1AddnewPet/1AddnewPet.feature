Feature:  Service Pet Post
  As QA Automation
  I want to create a pet
  To validate the status code and response

  Background: consume service
    * url url
  @ignoreScenario
  Scenario: Check the service POST method
    * def responseAdd = read('classpath:Karate/request/Pet/1AddnewPet/responseAdd.json' )
    * def requestCreate = read('classpath:Karate/request/Pet/1AddnewPet/requestBodyAdd.json' )

    Given path 'pet'
    And request requestCreate
    When method POST
    Then status 200
    And match response == responseAdd
    And assert response.id == requestCreate.id
    And assert response.name == requestCreate.name
    And assert response.category.id == requestCreate.category.id
    And assert response.category.name == requestCreate.category.name
    And assert response.tags.id == requestCreate.tags.id
    And assert response.tags.name == requestCreate.tags.name
    And assert response.status == requestCreate.status

Scenario Outline: POST a pet with values incorrect at id

    * def requestBody = {"id": <idBody>, "category": {"id": 22,"name": '#(nameCategory)'},"name": "luna*/_","photoUrls": ["string"],"tags": [{"id":7854,"name": '#(nameTags)'}],"status": "string"}

    Given path 'pet'
    And request requestBody
    When method post
    Then status <code>
    And match response == <expected>

    Examples:
    | idBody     | code     | expected                                                   |
    | "@$%^"     | 500      | {"code": "#number","type": "#string","message": "#string"} |
    | "uno"      | 500      | {"code": "#number","type": "#string","message": "#string"} |