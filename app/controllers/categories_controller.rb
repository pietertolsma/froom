class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def show
		if !logged_in?
			flash[:danger] = "You need to be logged in to see posts!"
			redirect_to :back
		end
		@category = Category.find(params[:id])
		@posts = @category.posts.order("created_at DESC")
	end
end
