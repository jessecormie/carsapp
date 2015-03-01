module OrdersHelper
module ApplicationHelper
	def signed_in?
		if session[:user_id].nil?
			return
		else
			@current_user = User.find_by_id(session[:user_id])
		end
	end
	
	def adminsigned_in?
		if session[:admin_id].nil?
			return
		else
			@current_admin = Admin.find_by_id(session[:admin_id])
		end
	end	
end
end
