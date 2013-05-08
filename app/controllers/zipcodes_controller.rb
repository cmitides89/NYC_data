class ZipcodesController < ApplicationController

	def index
		response = HTTParty.get("http://data.cityofnewyork.us/resource/erm2-nwe9.json?incident_zip=10010&$limit=5&$select=city,complaint_type,incident_zip,created_date&$order=created_date%20DESC")
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
		respond_to do |format|
		format.html do
			render @zipcode
			end

		end
	end



	def search
		@zipcode = Zipcode.query(params[:search])
		binding.pry
		redirect_to zipcodes_path
	end

end
