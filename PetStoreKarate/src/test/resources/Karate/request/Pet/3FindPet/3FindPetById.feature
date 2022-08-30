Feature:  Service Pet Find GET
  As QA Automation
  I want to find a pet
  To validate the status code and response

  Background: consume service
    * url url
  @ignoreScenario
  Scenario Outline: Check the service GET method Pet by Id with invalid values
    * def idPet = '<id>'

    Given path 'pet', idPet
    When method GET
    Then status <code>
    And match response == <expected>

    Examples:
      |id |code|expected|
      |888|404 |{"code": '#number',"type": '#string',"message": '#string'}|
      |@#$|404 |{"code": '#number',"type": '#string',"message": '#string'}|
      |   |405 |<?xml version="1.0" encoding="UTF-8" standalone="yes"?><apiResponse><type>unknown</type></apiResponse>|
