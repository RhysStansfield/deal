Feature: The homepage
  As a user who wants to view relevant offers
  In order to do so 
  I need to be able to choose relevant categories for products etc.
  
  Scenario: Choosing relevant categories
    Given I have signed up
    When I choose the categories I am interested in
    Then I should see the relevant companies