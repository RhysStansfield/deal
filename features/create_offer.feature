Feature: Creating & Viewing an Offer
	In order to view offers businesses have posted
	As a user who wants to see these offers
	I want to view the offers all businesses have posted

	@business_sign_in
	Scenario: Creating a deal
		Given I am on the create offer page
		When I create an offer
		Then I should see the brand's post on the offers page

	@sign_in
	Scenario: Viewing details of a deal	
		Given I have added a product, the Nike fuelband
		When I follow the see offer link on the offers page
		Then I should see the product details

	Scenario: Viewing the time since deal posted
		Given I have added an offer
		When I am on the offers page
		Then I should see "Created less than a minute ago"

	@sign_in
	Scenario: Customer cannot create new deal
		Given I am on the offers page
		Then I should not see "Create new deal"