Feature:  Service Update Pet PUT
  As QA Automation
  I want to update a pet
  To validate the status code and response

  Background: consume service
    * url url
  @ignoreScenario
  Scenario: Check the service PUT method
    * def responseUpdate = read ('classpath:Karate/request/Pet/2UpdatePet/responseUpdate.json')
    * def requestBodyUpdate = read ('classpath:Karate/request/Pet/2UpdatePet/requestBodyUpdate.json')
    Given path 'pet'
    And request requestBodyUpdate
    When method PUT
    Then status 200
    And match response == responseUpdate
    And assert response.id == requestBodyUpdate.id
    And assert response.name == requestBodyUpdate.name
    And assert response.category.id == requestBodyUpdate.category.id
    And assert response.category.name == requestBodyUpdate.category.name
    And assert response.tags.id == requestBodyUpdate.tags.id
    And assert response.tags.name == requestBodyUpdate.tags.name
    And assert response.status == requestBodyUpdate.status

  Scenario Outline: PUT a pet with incorrect values at id

    * def requestBody = {"id": <idBody>, "category": {"id": 22,"name": '#(nameCategory)'},"name": "luna*/_","photoUrls": ["string"],"tags": [{"id":7854,"name": '#(nameTags)'}],"status": "string"}

    Given path 'pet'
    And request requestBody
    When method put
    Then status <code>
    And match response == <expected>

    Examples:
      | idBody     | code     | expected                                                   |
      | "@$%^"     | 500      | {"code": "#number","type": "#string","message": "#string"} |
      | "uno"      | 500      | {"code": "#number","type": "#string","message": "#string"} |