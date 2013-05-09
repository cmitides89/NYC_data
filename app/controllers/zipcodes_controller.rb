class ZipcodesController < ApplicationController


	def index
		@user = User.find_by_email(current_user.email)
		@user_zip = @user.postal_code
		@results = Zipcode.display(@user_zip)
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