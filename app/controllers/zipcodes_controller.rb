class ZipcodesController < ApplicationController


	def index
		@user = User.find_by_email(current_user.email)
		@user_zip = @user.zipcode.name
		@results = Zipcode.display(@user_zip)					
		respond_to do |format|
		format.html
		format.json { render :json => @results }
		end
		
	end


	def search
		@results = Zipcode.query(params[:search])
		
	end
end