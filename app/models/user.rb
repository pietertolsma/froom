require 'bcrypt'

class User < ActiveRecord::Base
	before_save {self.email = email.downcase}
	validates :name, presence: true, length: {maximum: 50, minimum: 5}, uniqueness: {case_sensitive: false}
	validates :email, presence: true, length: {maximum: 255}, uniqueness: {case_sensitive: false}
	has_secure_password
	validates :password, length: {minimum: 6}

	has_many :comments
	has_many :posts
	
	def new

	end	

	def show
		
	end


end
