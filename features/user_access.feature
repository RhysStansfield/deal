
Feature: Signing up, signing in and signing out 
  As a user who wants to get incredible deals
  In order to do so
  I need to sign in

  Scenario: Signing Up 
    Given that I click the sign up button 
    When I enter my details and submit
    Then I should be signed up

  Scenario: Signing In
    Given that I click the sign in button
    When I enter my details and click sign in
    Then I should be signed in

  @omniauth_test
  Scenario Outline: User Login
    Given A user who has connected with "<provider>"
    When I visit the home page
    And I login with "<provider>"
    Then I should be signed in with "<provider>"

    Examples:
    |provider|
    |Facebook|
    |Google  |

  @sign_in
  Scenario: Signing Out
    Given that I click sign out
    Then I should be signed out