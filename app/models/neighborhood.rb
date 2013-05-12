class Neighborhood < ActiveRecord:Base
  attr_accessible :name

	has_many :comments
	has_many :users
	has_many :ratings
	has_many :events
	has_many :zipcodes
	has_many :complaint_datapoints, :through => :zipcode

	
	def zip
		neighborhoods = { :Inwood => ["10031","10032","10033","10034","10040"], :UpperEastSide => ["10021","10028","10044","10128"], :UpperWestSide => ["10023","10024","10025"], :LowerEastSide => ["10002","10003","10009"], :LowerManhattan => ["10004","10005","10006","10007","10038","10280"], :GreenwichVillageSoho => ["10012","10013","10014"], :GramercyParkMurryHill => ["10010","10016","10017","10022"], :EastHarlem => ["10029","10035"], :ChelseaAndClintonHill => ["10001","10011","10018","10019","10020","10036"], :EastHarlem => ["10029", "10035"]}
	end

end
