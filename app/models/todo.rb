class Todo < ActiveRecord::Base
	belongs_to :user
	validates :user_id_id, presence: true
	validates :name, presence: true
end
