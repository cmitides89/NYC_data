class ComplaintDatapoint < ActiveRecord::Base
  attr_accessible :zipcode_id

  belongs_to :zipcode
end
