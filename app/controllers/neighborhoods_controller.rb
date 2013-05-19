class NeighborhoodsController < ApplicationController
	def index

		@complaint_totals = Zipcode.find_complaint_totals
		

		respond_to do |format|
			format.html
			format.json { render :json => @complaint_totals }
		end
	
	end
end
