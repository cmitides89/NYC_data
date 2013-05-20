class NeighborhoodsController < ApplicationController
	def index

		@complaint_totals = Zipcode.find_complaint_totals
		whiny_index = @complaint_totals.sort_by {|zip,complaints| complaints}

		respond_to do |format|
			format.html
			format.json { render :json => @complaint_totals }
		end
	
	end
end
