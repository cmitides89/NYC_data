class Neighborhood < ActiveRecord::Base
  attr_accessible :name

	has_many :comments
	has_many :users
	has_many :ratings
	has_many :events
	has_many :zipcodes
	has_many :transit_datapoints, :through => :zipcode
	has_many :crime_datapoints, :through => :zipcode
	has_many :complaint_datapoints, :through => :zipcode
end
