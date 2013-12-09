Feature: Editing a user profile
  As a user of the app
  In order to personalize it
  I need to be able to edit my information

  @sign_in
  Scenario: Adding a picture to my profile
    Given I visit the edit profile page
    When I upload a photo
    Then I should see my avatar picture