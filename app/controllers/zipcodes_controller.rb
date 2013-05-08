class ZipcodesController < ApplicationController

	def index
		@results = Zipcode.display
		respond_to do |format|
		format.html do
			render @zipcode
			end

		end
	end



	def search
		@zipcode = Zipcode.query(params[:search])
		redirect_to zipcodes_path
	end

end
