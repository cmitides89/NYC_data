require 'spec_helper'

	describe Zipcode do
		it {should belong_to :neighborhood}
		describe "a zipcode" do
		before do
			@zipcode = Zipcode.new
			@zipcode.save
	it "should show recent 311 complaints" do
			@zipcode.should == true
			end
		end
	end

end