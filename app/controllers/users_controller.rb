class UsersController < ApplicationController
	
	def profile
		@user = current_user
		@schedule = @user.schedule
		@studios = Studio.all
	end
end