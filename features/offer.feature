Feature: Viewing offers
	In order to view offers businesses have posted
	As a user who wants to see the offers
	I want to be able to view the offers

	@business_sign_in
	Scenario: Viewing all offers
		Given I am on the offers page
		Then I should see "Your Offers:"

	@business_sign_in
		Scenario: Business cannot purchase an offer
			Given "Nike" has added an offer
			And I follow "See offer"
			Then I should not see the purchase button
			And I should see "Return to offer list"
			And I should see "Return to dashboard"

	@business_sign_in
	Scenario: Seeing the Create New Deal page
		Given I am on my dashboard
		When I follow "Create New Deal"
		Then I should see "Create New Deal"

	@sign_in @javascript
	Scenario: Viewing a single offer as a customer
		Given I am on the offers page
		And "Nike" has added an offer
		When I personalize my available offers
		And I follow "See offer"
		Then I should see "Nike"
		And I should see the purchase button

	@business_sign_in
	Scenario: Viewing a single offer as a business
		Given I am on the offers page
		When I follow "See offer"
		Then I should see the business version of the offer
		And not the customer time-windowed version

	@sign_in @javascript
	Scenario: Trying to view time window offer as business via url
		Given I am on the offers page
		And "Nike" has added an offer
		And I personalize my available offers
		When I follow "See offer"
		And I click sign out
		Then sign in as a business and visit the time window url
		Then I should not be on the time windowed offer
		And I should see the business version of the offer

	@sign_in
	Scenario: Trying to view a business offer via url as a customer
		Given "Nike" has added an offer
		When I try and follow a link to their business offer page
		Then I should be on the time windowed offer
