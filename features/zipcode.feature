Feature: User Zipcode

  Scenario: As a user I should be able to see 311 reports
    Given I am on the zipcode page
    Then I should see zipdcode 311 calls

  Scenario: As a  user I should be able to search for the 5 most recent 311 reports
  		Given I am on the zipcode page
  		And I should be able to search a particular zipcode
  		Then I should see the 5 most recent 311 calls