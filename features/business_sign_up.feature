Feature: Business users signing in, signing up, signing out
  As a business owner who would like to advertise their products
  In order to do so 
  I should be able to sign up, sign in and sign out

  Background: The sign up page
    Given I visit the business sign up page     

  Scenario: Signing up 
    When I fill in the form 
    Then I should see "Welcome to your Dashboard"

  Scenario: Signing up with incorrect details
    When I fill in the form with non matching passwords
    Then I should see "doesn't match Password"
    And I should see "Company name"

  @wip
  Scenario: Setting a category during sign up
    When I choose my business category as "Books"
    And I fill in the form
    And I visit my business profile page
    Then I should see "Category: Books"