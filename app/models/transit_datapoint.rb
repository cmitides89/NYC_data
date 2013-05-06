class TransitDatapoint < ActiveRecord::Base
  attr_accessible :zipcode_id

  belongs_to :zipcode
  belongs_to :neighborhood, :through => :zipcode
end
