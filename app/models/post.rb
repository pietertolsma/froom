class Post < ActiveRecord::Base

	belongs_to :category
	belongs_to :user
	has_many :comments

	def show

	end

	def new

	end

	def create

	end
end
