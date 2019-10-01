Feature: Visitor can view menu
As a visitor 
In order to get an overview of the restaurant's products 
I would like to be able to see a menu

  Background: 
    Given the following products exists
      | name          | description                     | price |
      | garlic bread  | garlic, bread, butter           | 30    |
      | margherita    | cheese, tomato sauce, basil     | 70    |
      | vesuvio       | cheese, tomato sauce, ham       | 70    |
      | calzone       | cheese, tomato sauce, ham       | 80    |
      | ice-cream     | strawberry                      | 40    |
      | ice-cream     | vanilla                         | 40    |
      | ice-cream     | chocolate                       | 40    |     
  
  Scenario: Be able to see menu
    Given I visit the page 
    Then I should see 'Menu'
    And I should see "garlic bread"
