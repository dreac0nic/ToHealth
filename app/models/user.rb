class User < ActiveRecord::Base
	has_many :todos
	has_many :answers
	validates :userName, presence: true
	validates :firstName, presence: true
	validates :lastName, presence: true
	validates :password_digest, presence: true
	validates :role, presence: true
  	has_secure_password

	def user?
	  self.role == 'user'
	end

	def teacher?
	  self.role == 'teacher'
	end

	def admin?
	  self.role == 'admin'
	end
end
