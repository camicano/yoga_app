class SchedulesController < ApplicationController
	def new
		@schedule = Schedule.new
	end	
	def create
		@schedule = Schedule.create(params[:schedule])
		@user = User.find(current_user)
		@user.schedule = @schedule

		redirect_to '/profile'
	end	
end


