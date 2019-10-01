Feature: Sign Up
As a user
In order to be able to finalise an order
I would like to be able to register an account

  Background:
    Given I visit the landing page
    And I click "Login"
    Then I should be on Login page
    And I click "Sign up"
    Then I should be on Sign up page

  Scenario: Creating an account
    When I fill in "Name" with "John"
    And I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click "Sign up"
    Then I should see "Hello, John"