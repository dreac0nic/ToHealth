class Question < ActiveRecord::Base
	has_many :answer
	validates :questionText, presence: true
end
