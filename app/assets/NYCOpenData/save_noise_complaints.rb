json = File.read('app/assets/NYCOpenData/noise_complaints_test.json')
noise_complaints = JSON.parse(json)
noise_complaints = noise_complaints["data"]
noise_complaints.each do |incident|
	complaint = ComplaintDatapoint.new
	complaint.descriptor = incident[14]
	if Zipcode.find_by_name(incident[16])
		complaint.zipcode_id = Zipcode.find_by_name(incident[16]).id
	else
		complaint.zipcode_id = Zipcode.create(:name => incident[16]).id
	end
	complaint.latitude = incident[57]
	complaint.longitude = incident[58]
	complaint.date = incident[9]
	complaint.address = incident[17]
	complaint.save
end