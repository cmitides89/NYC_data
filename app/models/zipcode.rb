class Zipcode < ActiveRecord::Base
  attr_accessible :name, :neighborhood_id, :latitude, :longitude
  has_many :users
	belongs_to :neighborhood
	has_many :complaint_datapoints
	has_many :comments

	geocoded_by :name

	def self.query(zipcode) #< zipcode gets put into query and returns most recent 311 calls from that zipcode
		HTTParty.get("http://data.cityofnewyork.us/resource/erm2-nwe9.json?incident_zip=#{zipcode}&$limit=5&$select=city,complaint_type,incident_zip,created_date,descriptor,incident_address,&$order=created_date%20DESC")
	end
	def self.display(zipcode)
		 HTTParty.get("http://data.cityofnewyork.us/resource/erm2-nwe9.json?incident_zip=#{zipcode.to_i}&$limit=5&$select=city,complaint_type,incident_zip,created_date,descriptor,incident_address,location_type,latitude,longitude&$order=created_date%20DESC")
	end

	def self.find_zip_data
		file = File.join(Rails.root, 'app', 'assets', 'NYCOpenData', 'drinking.json')
		json = File.read(file)
		noise_complaints = JSON.parse(json)
		noise_complaints = noise_complaints["data"]
		noise_complaints.each do |incident|
			complaint = ComplaintDatapoint.new
			complaint.complaint_type = incident[13]
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
			complaint.save!
		end
	end

	#create a hash with key = id and value = total complaints

	def self.find_complaint_totals
		complaint_totals = Hash.new
		Zipcode.all.each do |zipcode|	
			zip_total = ComplaintDatapoint.where("zipcode_id = ?", zipcode.id).count
			complaint_totals[zipcode.name] = zip_total 
		end
		complaint_totals
	end

end
