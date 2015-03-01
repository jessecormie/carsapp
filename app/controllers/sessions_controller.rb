class SessionsController < ApplicationController
before_filter :signed_in?
before_filter :adminsigned_in?
  def new
  end

  def create
	user = User.find_by_username(params[:username])
	if user && user.authenticate(params[:password])
		session[:user_id] = user.id
		redirect_to session[:return_to] || cars_path
		
	else
		flash.now[:error] = "Invalid name/password combination."
		render 'new'
	end
  end
  

 def destroy
	if signed_in?
		session[:user_id]=nil
	else
		flash[:notice]="You need to sign in first"
	end
	redirect_to root_path	
  end
  
def createadmin
	admin = Admin.find_by_username(params[:username])
	if admin && admin.authenticate(params[:password])
		session[:admin_id] = admin.id
		redirect_to session[:return_to] || locations_path
	else
		flash[:error] = "Invalid admin name/password combination."
		render 'newadmin'
	end
end

def newadmin
end

def destroyadmin
	if adminsigned_in?
		session[:admin_id] = nil
	else
		flash[:notice] = "You need to sign in first"
	end
	redirect_to root_path
end	
end