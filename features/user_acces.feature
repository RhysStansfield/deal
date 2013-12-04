Feature: Signing up, signing in and signing out 
  As a user who wants to get incredible deals
  In order to do so
  I need to sign in

  Scenario: Signing Up 
    Given that I click the sign up button 
    When I enter my details and submit
    Then I should be signed in 
     
