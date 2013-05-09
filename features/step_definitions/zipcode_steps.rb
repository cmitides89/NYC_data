
Given(/^I am on the zipcode page$/) do
  visit root_path
end

Then(/^I should  search five three one one calls$/) do
    assert_not_nil(Zipcode.query(10010))
end


Then(/^I should see zipcode three one one calls$/) do
  	assert_not_nil(Zipcode.display)
end