class Zipcode < ActiveRecord::Base
  	attr_accessible :name, :neighborhood_id

  	has_many :users
	belongs_to :neighborhood
	has_many :comments

	def self.query(zipcode) #< zipcode gets put into query and returns most recent 311 calls from that zipcode
		HTTParty.get("http://data.cityofnewyork.us/resource/erm2-nwe9.json?incident_zip=#{zipcode}&$limit=5&$select=city,complaint_type,incident_zip,created_date&$order=created_date%20DESC")
		end




	def self.display(zipcode)
		 HTTParty.get("http://data.cityofnewyork.us/resource/erm2-nwe9.json?incident_zip=#{zipcode.to_i}&$limit=5&$select=city,complaint_type,incident_zip,created_date,descriptor&$order=created_date%20DESC")
	end
end
