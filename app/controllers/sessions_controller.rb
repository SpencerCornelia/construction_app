class SessionsController < ApplicationController
	def new
		@user = User.new
		render :new
	end

	def create
		user_params = params.require(:user).permit(:username, :password)
		@user = User.confirm(user_params)
		login(@user)
		redirect_to "/users/#{@user.id}"
	end

	def show
		render :show
	end
end
