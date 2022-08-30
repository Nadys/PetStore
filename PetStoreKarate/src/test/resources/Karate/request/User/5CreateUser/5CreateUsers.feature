Feature:  Service User Create
  As QA Automation
  I want to create a user
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service login POST method
    * def responseLogin = read('classpath:Karate/request/User/5CreateUser/responseLogin.json')
    * def requestCreate = read('classpath:Karate/request/User/5CreateUser/requestBodyLogin.json')

    Given path 'user'
    And request requestCreate
    When method POST
    Then status 200
    And match response == responseLogin


