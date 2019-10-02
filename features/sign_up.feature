Feature: Sign Up
  As a user
  In order to be able to finalise an order
  I would like to be able to register an account

  Background: 
    Given I visit the landing page
    And I click "Login"
    And I click "Sign up"

  Scenario: Creating an account[Happy Path]
    When I fill in "Name" with "John"
    And I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click "Sign up"
    Then I should see "Hello, John"

  Scenario: Unsuccessfully creating an account[Sad Path]
    When I fill in "Name" with ""
    And I fill in "Email" with ""
    And I fill in "Password" with ""
    And I fill in "Password confirmation" with "password"
    And I click "Sign up"
    Then I should see "Name can't be blank"
    And I should see "Email can't be blank"
    And I should see "Password can't be blank"

  Scenario: Not entering correct information[Sad Path]
    When I fill in "Name" with "JohnMakesADullBoyIfGivenUglyCode"
    And I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "passw"
    And I fill in "Password confirmation" with "password"
    And I click "Sign up"
    Then I should see "Name is too long (maximum is 15 characters)"
    And I should see "Password is too short (minimum is 6 characters)"
    And I should see "Password confirmation doesn't match Password"