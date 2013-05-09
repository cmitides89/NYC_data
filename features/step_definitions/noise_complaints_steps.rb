Given(/^I am on a the show page for zipcode (\d+)$/) do |zipcode|
  Zipcode.create(:name => zipcode)
  visit '/zipcodes/1'
end

Then(/^I see noise complaint data specific to zipcode (\d+)$/) do |zipcode|
  pending # express the regexp above with the code you wish you had
end