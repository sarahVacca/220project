Feature: Login on Clark Clothes Website

  @Test1
  Scenario: Login on Clark Clothes Website
    Given I go to clark clothes website
    Then I click log in
    Then User Login
    Then I verify hi user text is visible