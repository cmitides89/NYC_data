class ZipcodesController < ApplicationController

	def index
		if current_resident
			@user = User.find_by_email(current_resident.email)
		elsif current_official
			@user = User.find_by_email(current_official.email)
		end
		@zipcode = @user.zipcode
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

	def login

	end
	
	def show
		@zip = Zipcode.find(params[:id])
			
		if current_resident
			@user = User.find_by_email(current_resident.email)
		elsif current_official
			@user = User.find_by_email(current_official.email)
		end
		
		if current_official || current_resident
			@zipcode = @user.zipcode
			@user_zip = @user.zipcode.name
		end
		@results = Zipcode.display(@zip.name)
		noise_complaints = ComplaintDatapoint.where("zipcode_id = ? AND complaint_type = ?", params[:id], "Noise - Commercial")
		@music_counter = 0
		@banging_counter = 0
		@talking_counter = 0
		@car_music_counter = 0
		@tv_counter = 0
		@other_counter = 0
		@horn_counter = 0
		noise_complaints.each do |complaint|
			case complaint.descriptor
				when "Loud Music/Party"
					@music_counter += 1
				when "Banging/Pounding"
					@banging_counter += 1
				when "Loud Talking"
					@talking_counter += 1
				when "Car/Truck Music"
					@car_music_counter += 1
				when "Loud Television"
					@tv_counter += 1
				when "Car/Truck Horn"
					@horn_counter += 1
				else
			end
		end

		drinking_complaints = ComplaintDatapoint.where("zipcode_id = ? AND complaint_type = ?", params[:id], "Drinking")
		@public_counter = 0
		@underage_counter = 0
		drinking_complaints.each do |complaint|
			case complaint.descriptor
				when "In Public"
					@public_counter += 1
				when "Underage - Licensed Est"
					@underage_counter += 1
				else
			end

		end

		rodent_complaints = ComplaintDatapoint.where("zipcode_id = ? AND complaint_type = ?", params[:id], "Rodent")
		@rodent_counter = 0
		rodent_complaints.each do |complaint|
			case complaint.complaint_type
				when "Rodent"
					@rodent_counter += 1
				else
			end
		end

		homeless_complaints = ComplaintDatapoint.where("zipcode_id = ? AND complaint_type = ?", params[:id], "Homeless Encampment")
		@homeless_counter = 0
		homeless_complaints.each do |complaint|
			case complaint.complaint_type
				when "Homeless Encampment"
					@homeless_counter += 1
				else
			end
		end


		render 'show'
	end

end
