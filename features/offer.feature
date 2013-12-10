Feature: Viewing offers
		In order to view offers businesses have posted
		As a user who wants to see the offers
		I want to be able to view the offers

		Background: Offers main page
			Given I am on the offers page

		Scenario: Viewing all offers
			Then I should see "Available Offers"

		Scenario: Seeing the Create New Deal page
			When I follow "Create New Deal"
			Then I should see "Create New Deal"

		Scenario: Viewing a single offer
			And "Nike" has added an offer
			And I follow "See offer"
			Then I should see "Nike"
			And I should see purchase button