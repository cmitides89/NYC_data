class ComplaintDatapoint < ActiveRecord::Base
  attr_accessible :zipcode_id

 	belongs_to :zipcode

  
		def save_noise_complaint_data
			file = File.join(Rails.root, 'app', 'assets', 'NYCOpenData', 'noise_complaints.json')
			json = File.read(file)
			noise_complaints = JSON.parse(json)
			noise_complaints = noise_complaints["data"]
			noise_complaints.each do |complaint|
				complaint = ComplaintDatapoint.new
				complaint.type = complaint[14]
				complaint.zipcode = complaint[16]
				complaint.latitude = complaint[57]
				complaint.longitude = complaint[58]
				complaint.date = complaint[9]
				complaint.address = complaint[17]
				complaint.save
			end
		end




end
