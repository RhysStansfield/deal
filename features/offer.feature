Feature: Viewing offers
	In order to view offers businesses have posted
	As a user who wants to see the offers
	I want to be able to view the offers

	@business_sign_in
	Scenario: Viewing all offers
		Given I am on the offers page
		Then I should see "Available Offers"

	@business_sign_in
	Scenario: Seeing the Create New Deal page
		Given I am on my dashboard
		When I follow "Create New Deal"
		Then I should see "Create New Deal"

	@sign_in
	Scenario: Viewing a single offer
		Given I am on the offers page
		And "Nike" has added an offer
		And I follow "See offer"
		Then I should see "Nike"
		And I should see purchase button