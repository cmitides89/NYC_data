class Zipcode < ActiveRecord::Base
  attr_accessible :name, :neighborhood_id
  has_many :users
	belongs_to :neighborhood


	def self.query(zipcode)
		response = HTTParty.get("http://data.cityofnewyork.us/resource/erm2-nwe9.json?incident_zip=#{zipcode}&$limit=5&$select=city,complaint_type,incident_zip,created_date&$order=created_date")
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


	def self.display
		response = HTTParty.get("http://data.cityofnewyork.us/resource/erm2-nwe9.json?incident_zip=10010&$limit=5&$select=city,complaint_type,incident_zip,created_date,descriptor&$order=created_date%20DESC")

		@created = []
		@city = []
		@zip = []
		@complaint = []
		@descriptor = []
		response.each do |results|
			@created << results["created_date"]
			@city << results["city"]
			@zip << results["incident_zip"]
			@complaint << results["complaint_type"]
			@descriptor << results["descriptor"]
		end

	end
end
