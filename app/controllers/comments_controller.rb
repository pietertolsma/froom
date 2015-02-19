class CommentsController < ApplicationController

	def new

	end

	def create
		comment = Comment.new(comment_params)
		if comment.save
			redirect_to :back
		else
			redirect_to :back
		end
	end

	private
		def comment_params
			params.require(:comment).permit(:user_id, :content, :post_id)
		end
end
