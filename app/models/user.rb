class User < ActiveRecord::Base
	belongs_to :car
	has_many :posts, :dependent => :destroy
	
has_secure_password		   

validates_confirmation_of :password    

validates_uniqueness_of :email	

     

end
