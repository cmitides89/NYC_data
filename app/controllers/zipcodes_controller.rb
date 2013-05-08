class ZipcodesController < ApplicationController

	def index
		response = HTTParty.get("http://data.cityofnewyork.us/resource/erm2-nwe9.json?$limit=5&$select=city,complaint_type,incident_zip,created_date&$order=created_date")
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
		# @zipcode = Zipcode.find(params[:zipcode])
		respond_to do |format|
		format.html do
			render @zipcode
			end

		end
	end


end
