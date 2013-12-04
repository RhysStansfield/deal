Feature: Creating & Viewing an Offer
	In order to view offers businesses have posted
	As a user who wants to see these offers
	I want to view the offers all businesses have posted


	Scenario: Creating a deal
		Given I am on the create offer page
		And I fill in the form with:
			| business	|
			| Nike		|
		Then I should see "Nike"