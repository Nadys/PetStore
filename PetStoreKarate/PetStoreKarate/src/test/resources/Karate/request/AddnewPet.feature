Feature:  Service Pet Post
  As QA Automation
  I want to create a pet
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service POST method
    * def responseAdd = read('classpath:Karate/request/responseAdd.json' )
    * def requestCreate = read('classpath:Karate/request/requestBodyAdd.json' )

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

