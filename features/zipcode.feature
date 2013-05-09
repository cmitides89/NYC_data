Feature: User Zipcode

  Scenario: As a user I should be able to see 311 reports

    Given I am on the zipcode page
    Then I should see zipcode three one one calls
  @wip
  Scenario: As a  user I should be able to search for the 5 most recent 311 reports
  		Given I am on the zipcode page
  		Then I should  search five three one one calls