class Comment < ActiveRecord::Base
  attr_accessible :body, :neighborhood_id, :user_id

  belongs_to :user
  belongs_to :neighborhood
end
