class Rating < ActiveRecord::Base
  attr_accessible :neighborhood_id, :number, :user_id

  belongs_to :user
	belongs_to :neighborhood
end
