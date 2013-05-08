class Zipcode < ActiveRecord::Base
  attr_accessible :name, :neighborhood_id
  has_many :users
	belongs_to :neighborhood


	def self.query(zipcode)
		results = HTTParty.get("http://data.cityofnewyork.us/resource/erm2-nwe9.json?incident_zip=#{zipcode}&$limit=5&$select=city,complaint_type,incident_zip,created_date&$order=created_date")
		binding.pry
		response = JSON(results)
		@created = []
		@city = []
		@zip = []
		@complaint = []
		response.each do |x|
			@created << x["created_date"]
			@city << x["city"]
			@zip << x["incident_zip"]
			@complaint << x["complaint_type"]
		end

	end
end
