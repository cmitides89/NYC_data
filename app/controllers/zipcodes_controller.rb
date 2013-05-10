class ZipcodesController < ApplicationController

	def show
		zip = Zipcode.find(params[:id])
		noise_complaints = ComplaintDatapoint.where("zipcode_id = ?", params[:id])
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

		render 'show'
	end



end
