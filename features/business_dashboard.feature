Feature: Having a business dashboard to monitor
  As a business owner who wants to see analytics
  In order to see how my deals are doing
  I need a dashboard

  Background: An offer already exists
        Given I have added an offer

  @business_sign_in
  Scenario: Viewing the dashboard
    Given I have signed up as a business
    When I log in
    Then I should see my dashboard

  @sign_in @javascript
  Scenario: Seeing impressions
    When a user visits the offers page and sees that offer
    Then I should see the offer impressions increase by one
    
  @business_sign_in @javascript 
  Scenario: Not seeing impressions for business users
    When I visit the offer page and see that offer
    Then I should not see the offer impressions increase by one
