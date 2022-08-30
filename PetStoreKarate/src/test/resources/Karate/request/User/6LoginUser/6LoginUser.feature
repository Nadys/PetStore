Feature:  Service Login GET
  As QA Automation
  I want to login a user
  To validate the status code and response

  Background: consume service
    * url url
  @LoginUser
  Scenario Outline: Check the service login GET method

    Given path 'user','login'
    And params {username: <username>, password:<password>}
    When method GET
    Then status 200
    And match response == <expected>

    Examples:
    | username | password | expected                                             |
    | Nadia    | 123456   | {"code": 200,"type": "unknown","message": "#notnull"}|
    |  hola    |  @#$%^   | {"code": 200,"type": "unknown","message": "#notnull"}|
