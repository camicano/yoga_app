class SchedulesController < ApplicationController
	
	def new
		user = User.find(current_user)	
		@schedule = Schedule.new
	end	

	def create
		@schedule = Schedule.create(params[:schedule])
		@user = User.find(current_user)
		@user.schedule = @schedule

		redirect_to '/profile'
	end	
	
	def edit
		user = User.find(current_user)
		@schedule = user.schedule
	end

	def update
		user = User.find(current_user)
		id = user.schedule.id
		@schedule = Schedule.update(id, params[:schedule])
		user.schedule = @schedule

		redirect_to '/profile'
	end
end

 
