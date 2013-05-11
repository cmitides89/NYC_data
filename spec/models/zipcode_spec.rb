require 'spec_helper'

	describe "zipcode dashboard" do

		before do
			@zipcode = Zipcode.display
		it "should show recent 311 complaints" do
			@zipcode.should == true
			end
	end

end