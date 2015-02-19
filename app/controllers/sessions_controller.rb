class SessionsController < ApplicationController

	def new

	end

	def create
		user = User.find_by(name: params[:session][:name])
		if user && user.authenticate(params[:session][:password])
			log_in user
			redirect_to categories_path
		else 
			redirect_to 'new'
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to login_path
	end
end
