class UsersController < ApplicationController
	before_action :logged_in?, only: [:show]
	before_action :set_user, only: [:index, :destroy]

	def index
		@user = User.new
		render :new
	end

	def new
		@user = User.new 
		render :new
	end

	def create
		user_params = params.require(:user).permit(:username, :password, :password_confirmation)
		@user = User.new(user_params)
		if @user.save
			login(@user)
			redirect_to "/users/#{@user.id}"
		else
			redirect_to root_path
			flash[:notice] = @user.errors.full_messages.to_sentence
		end	
	end

	def show
		@user = User.find(params[:id])
		render :show
	end

	def destroy
		@user.destroy()
		logout
		redirect_to root_path
	end

	private

	def set_user
		@user = current_user
	end

end
