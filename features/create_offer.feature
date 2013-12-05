Feature: Creating & Viewing an Offer
	In order to view offers businesses have posted
	As a user who wants to see these offers
	I want to view the offers all businesses have posted


	Background: Creating a deal
		Given I am on the create offer page
		And I create the "Nike Fuelband" offer

	Scenario: Viewing details of a deal	
		Then I should see "Nike"
		And I should see "Fuelband"
		And I should see "Fitness tracker"
		And I should see "£90.00"

	Scenario: Viewing the time since deal posted
		Given I am on the offers page 
		And I should see "Created less than a minute ago"