Feature: Noise complaint data presentation

	As a NYC resident
	I want to see noise complaint data specific to zipcodes in Manhattan

	Scenario: A visitor sees noise_complaint data for their zipcode 
		Given I am on a the show page for zipcode 10011
		Then I see noise complaint data specific to zipcode 10011



