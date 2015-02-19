class PostsController < ApplicationController

	def show
		@post = Post.find(params[:id])
		@comment = Comment.new
		@comments = @post.comments.all
	end

	def new
		@category = Category.find(params[:category])
		@post = Post.new
	end

	def create
		if logged_in?
			post = Post.new(post_params)
			post.user_id = current_user.id
			if post.save
				redirect_to post.category
			else
				flash[:danger] = "Error saving post!"
				redirect_to :back
			end
		else
			redirect_to login_path
		end
	end

	private
		def post_params
			params.require(:post).permit(:title, :content, :category_id)
		end
end
