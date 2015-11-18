class HealthController < ApplicationController

	def index
		@answers = Answer.where(:user_id => @user_id)
	end
end
