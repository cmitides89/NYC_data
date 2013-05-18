class ComplaintDatapoint < ActiveRecord::Base
  attr_accessible :zipcode_id, :latitude, :longitude

 	belongs_to :zipcode


end
