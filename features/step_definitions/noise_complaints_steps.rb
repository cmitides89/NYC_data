Given(/^I have already registered with email "(.*?)" and zipcode "(.*?)"$/) do |email, zipcode|
  User.create(:email => email, :zipcode => zipcode, :password => 'password', :password_confirmation => 'password')
end

Given(/^I am on a the show page for zipcode "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see noise complaint data specific to zipcode "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end