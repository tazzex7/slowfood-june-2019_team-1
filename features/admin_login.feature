Feature: Restaurant owner can log in
  As a restaurant owner
  In order to make updates to my restaurant page
  I would like to be able to log in and access my restaurant page

  Background:
    Given the following user exists
      | name | email        | password | admin |
      | John | john@doe.com | password | true  |
    Given the following categories exists
      | title         |
      | Starters      |
    And the following products exists
      | name         | description           | price | category |
      | garlic bread | garlic, bread, butter | 30    | Starters |
    And I visit the landing page

  Scenario: Owner successfully logs in
    When I click "Login"
    And I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "password"
    And I click "Log in"
    Then I should see "Edit"