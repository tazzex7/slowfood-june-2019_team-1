Feature: User visits Food Comrade landing page
  As a visitor
  In order to navigate the site
  I would like to use a navbar

  Scenario: User visits landing page
    When I visit the landing page
    Then I should see "Food Comrade"
    And I click "Menu"
    Then I should see "Joe's pizza"