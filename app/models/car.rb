class Car < ActiveRecord::Base
	belongs_to :location
	belongs_to :user
	has_many :posts, :dependent => :destroy
	
	def self.search(search)
	search_condition = search + "%"
	find(:all, :conditions => ['name LIKE ?', search_condition])
	end
end
