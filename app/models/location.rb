class Location < ActiveRecord::Base
	has_many :cars, :dependent => :destroy
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
	

	
end


