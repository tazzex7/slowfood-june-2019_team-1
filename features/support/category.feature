Feature: Visitor can view menu products ordered in categories
 As a visitor,
  In order to choose product more easily
  I would like to see the products sorted in categorie

  Background: 
    Given the following products exists
      | name          | description                     | price |
      | garlic bread  | garlic, bread, butter           | 30    |
      | margherita    | cheese, tomato sauce, basil     | 70    |
      | vesuvio       | cheese, tomato sauce, ham       | 70    |
      | calzone       | cheese, tomato sauce, ham       | 80    |
      | ice-cream     | strawberry                      | 40    |
      | ice-cream     | vanilla                         | 40    |
    Given I visit the landing page 
    Then I should see 'Menu'
  
  Scenario: Products displayed in categories
    Then I should see "Starters"
    And I should see "garlic bread"
    And I should see "Main Courses"
    And I should see "margherita"
    And I should see "Desserts"
    And I should see "ice-cream"

  