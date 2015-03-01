class PostsController < ApplicationController

	before_filter :authorise
	
	def create
	@car = Car.find params[:car_id]
	@post = @car.posts.create params[:post]
	@post.user_id = @current_user.id
	@post.save
	
	respond_to do |format|
		format.html { redirect_to @car }
	end	
end
