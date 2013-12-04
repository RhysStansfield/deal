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

  @sign_in
  Scenario: Signing Out
    Given 
    When I click Sign out
    Then I should be signed out
