class ZipcodesController < ApplicationController


	def index
		if current_resident
		@user = User.find_by_email(current_resident.email)
		elsif current_official
		@user = User.find_by_email(current_official.email)
		end
		@zipcode = @user.zipcode
		@user_zip = @user.zipcode.name
		# @results = Zipcode.display(@user_zip)
		respond_to do |format|
		format.html
		format.json { render :json => @results }
		end
		
	end


	def search
		@results = Zipcode.query(params[:search])
	end

	def login

	end


end