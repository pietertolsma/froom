class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		user = User.new(user_params)

		if user.save
			redirect_to categories_path
		else
			redirect_to :back
		end
	end

	private
		def user_params
			params.require(:user).permit(:name, :email, :birthday, :password, :password_confirmation)
		end
end
