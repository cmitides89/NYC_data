class ZipcodesController < ApplicationController


	def index
		@results = Zipcode.display
		respond_to do |format|
		format.html do
			render @zipcode #< rendering zipcode partial
			end

		end
	end


	def search
		@results = Zipcode.query(params[:search])
		end

end
