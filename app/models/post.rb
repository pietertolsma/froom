class Post < ActiveRecord::Base

	belongs_to :category, :class_name => "category", :foreign_key => "category_id"
	belongs_to :user
	has_many :comments

	def show

	end

	def new

	end

	def create

	end
end
