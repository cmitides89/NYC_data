Given(/^I have already registered with email "(.*?)" and zipcode "(.*?)"$/) do |email, zipcode|
  @test_zip = Zipcode.create(:name => zipcode)
  @user = User.create(:email => email, :zipcode_id => @test_zip.id, :password => 'password', :password_confirmation => 'password')
end

Given(/^I am on the show page for zipcode "(.*?)"$/) do |zipcode|
  @zip = Zipcode.find(1)
  visit(zipcode_path(@zip))
end

Then(/^I should view noise complaint data specific to zipcode "(.*?)"$/) do |zipcode|
  @zip = Zipcode.find("10040")
  @zip.complaint_datapoints = ComplaintDatapoint.where("zipcode_id = 'zip.id'")
end

