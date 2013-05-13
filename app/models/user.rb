class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :neighborhood_id, :type, :zipcode_id, :email, :password, :name, :postal_code

  has_many :events
	has_one :rating
	belongs_to :zipcode
  has_many :comments
  before_save :set_zipcode

  def set_zipcode 
    self.zipcode_id = Zipcode.find_by_name(postal_code).id
  end




end
