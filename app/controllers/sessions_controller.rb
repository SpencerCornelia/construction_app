class SessionsController < ApplicationController
	def new
		@user = User.new
		render :new
	end

	def create
		user_params = params.require(:user).permit(:username, :password)
		@user = User.confirm(user_params)
		if @user
			login(@user)
			redirect_to "/users/#{@user.id}"
		else
			redirect_to "/"
		end
	end

	def show
		render :show
	end

    def destroy
    	logout
    	set_cache_buster
    	redirect_to root_path
    end
end
