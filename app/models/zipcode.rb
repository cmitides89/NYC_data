class Zipcode < ActiveRecord::Base
  attr_accessible :name, :neighborhood_id

  has_many :users
	belongs_to :neighborhood
end
