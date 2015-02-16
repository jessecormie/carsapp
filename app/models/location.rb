class Location < ActiveRecord::Base
	has_many :cars, :dependent => :destroy
	#attr_accessible :address, :latitude, :longitude
	#geocoded_by :address
	
end


