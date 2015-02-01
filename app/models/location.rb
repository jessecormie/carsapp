class Location < ActiveRecord::Base
	has_many :cars, :dependent => :destroy
end
