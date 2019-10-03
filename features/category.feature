Feature: Visitor can view menu products ordered in categories
  As a visitor,
  In order to choose product more easily
  I would like to see the products sorted in categorie

  Background: 
    Given the following categories exists
      | title         |
      | Starters      |
      | Main Courses  |
      | Desserts      |
    And the following products exists
      | name          | description                     | price | category        |
      | garlic bread  | garlic, bread, butter           | 30    | Starters        |
      | margherita    | cheese, tomato sauce, basil     | 70    | Main Courses    |
      | vesuvio       | cheese, tomato sauce, ham       | 70    | Main Courses    |
      | calzone       | cheese, tomato sauce, ham       | 80    | Main Courses    |
      | ice-cream     | strawberry                      | 40    | Desserts        |
      | ice-cream     | vanilla                         | 40    | Desserts        |
    And I visit the landing page

  Scenario: Products displayed in categories [Happy Path]
    Then I should see "Starters"
    And I should see "garlic bread"
    And I should see "Main Courses"
    And I should see "margherita"
    And I should see "Desserts"
    And I should see "ice-cream"
