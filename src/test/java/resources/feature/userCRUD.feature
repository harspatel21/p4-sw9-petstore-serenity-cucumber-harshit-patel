Feature: Testing different request on the petstore application

  Scenario Outline: As a user I am registering new user detail
    Given Petstore app is running
    When I create a new user by providing userID "<id>" username "<username>" firstName "<firstName>" lastName "<lastName>" email "<eamil>" password "<password>" phone "<phone>" userStatus "<userStatus>"
    And I send GET request for userID "<id>"
    And I update user by providing userID "<id>" username "<username>" firstName "<firstName>" lastName "<lastName>" email "<eamil>" password "<password>" phone "<phone>" userStatus "<userStatus>"
    And I send delete request by userID "<id>"
    Then user get deleted and get status code 200

    Examples:
      | id  | username | firstName | lastName | eamil              | password    | phone       | userStatus |
      | 555 | RamSita  | Ram       | Sita     | Ram.Sita@email.com | RamSita1234 | 07895628922 | 1          |









