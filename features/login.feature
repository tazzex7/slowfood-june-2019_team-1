Feature: Login
  As a user
  In order to access my account
  I would like to be able to log in

  Background:
    Given the following user exists
      | name | email        | password |
      | John | john@doe.com | password |
    And I visit the landing page
    And I click "Login"

  Scenario: Logging in[Happy Path]
    When I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "password"
    And I click "Log in"
    Then I should see "Hello, John"

  Scenario: Not entering correct information[Sad Path]
    When I fill in "Email" with "jopn@doe.com"
    And I fill in "Password" with ""
    And I click "Log in"
    Then I should see "Invalid Email or password."