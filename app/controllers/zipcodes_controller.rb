class ZipcodesController < ApplicationController

	def index
		response = HTTParty.get("http://data.cityofnewyork.us/resource/erm2-nwe9.json?$limit=5&$select=city,complaint_type,incident_zip")
		@city = []
		response.each do |x|
			@city << x["incident_zip"]

		end
		# @zipcode = Zipcode.find(params[:zipcode])
		respond_to do |format|
		format.html do
			render @zipcode
			end

		end
	end


end
