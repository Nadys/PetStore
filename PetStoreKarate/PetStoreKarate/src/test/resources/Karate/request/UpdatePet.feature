Feature:  Service Update Pet PUT
  As QA Automation
  I want to update a pet
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service PUT method
    * def responseUpdate = read ('classpath:Karate/request/responseUpdate.json')
    * def requestBodyUpdate = read ('classpath:Karate/request/requestBodyUpdate.json')
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