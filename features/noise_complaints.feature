Feature: Noise complaint data presentation

	As a NYC resident
	I want to see noise complaint data specific to zipcodes in Manhattan

	Scenario: A visitor sees noise_complaint data for their zipcode 
		Given I am on the homepage
		When I enter my zipcode "10011"
		Then I should see noise complaint data specific to the zipcode entered

