class ApplicationController < ActionController::Base
  protect_from_forgery
  
  include ApplicationHelper
  
  def authorise
	unless signed_in?
		store_location
		redirect_to signin_path, :notice =>"Please sign in to access this page"
	end
  end
  
 def authoriseAdmin
    unless adminsigned_in? 
        store_location
        redirect_to adminsignin_path, :notice => "You need to be an administrator to do this"
    end
   end
  
private
def store_location
session[:return_to]=request.fullpath
end


	
end
