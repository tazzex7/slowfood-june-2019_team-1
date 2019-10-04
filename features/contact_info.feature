Feature: User can see contact info
  As a restaurant owner,
  In order to keep my customers up to date
  I would like to be able to make updates regarding information and contact details on my restaurant page

  Background:
    Given the following contact info exists
      | name    | number     | address                      | content            |
      | Comrade | 0701000000 | Sveavägen 16, Stockholm      | Everyone is equal  |    
    Given I visit the landing page

  Scenario: User sees restaurant info
    Then I should see "Contact information"
    And I should see "Phone number:"
    And I should see "Address:"