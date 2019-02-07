Feature: BBC Login

  Scenario: Inputting incorrect username and credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect password details
    When I try to login
    Then I recieve an error for not finding the account

  Scenario: Inputting incorrect short password and credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect short password details
    When I try to login
    Then I recieve an error for having a short password

