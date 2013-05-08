Feature: Noise complaint data presentation

	As a NYC resident
	I want to see noise complaint data specific to zipcodes in Manhattan

	Scenario: A visitor sees noise_complaint data for their zipcode 
		Given I have already registered with email "test@test.com" and zipcode "10011"
		And I am on a the show page for zipcode "10011"
		Then I should see noise complaint data specific to zipcode "10011"

