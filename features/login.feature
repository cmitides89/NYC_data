Feature: User sign up and registration

	As a NYC resident
	I want to become a member and checkout neighborhood complaints

	Scenario: A user signs up with valid information
		Given I am on the sign up page
		When I sign up as a user with email "test@test.com"
		Then I should have an account

	Scenario: A user logs in with valid information
		Given I am on the login page
		And I have already registered as "test@test.com"
		When I login with email address "example@gmail.com"
		Then I should see "Welcome Back"