class User < ActiveRecord::Base
  attr_accessible :neighborhood_id, :type, :zipcode_id, :email, :password, :name

  has_many :events
	has_one :rating
	belongs_to :zipcode
end
