class User < ActiveRecord::Base
  attr_accessible :neighborhood_id, :type, :zipcode_id, :email, :password, :name

  has_many :events
	has_one :rating
	belongs_to :zipcode
	has_many :transit_datapoints, :through => :neighborhood
	has_many :crime_datapoints, :through => :neighborhood
	has_many :complaint_datapoints, :through => :neighborhood
end
