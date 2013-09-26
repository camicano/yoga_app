class AddressesController < ApplicationController
	def new
		@address = Address.new
	end	
	def create
		@address = Address.create(params[:address])
		@studio = Studio.find(current_studio)
		@studio.address = @address

		redirect_to '/studios/profile'
	end
	def edit
		studio = Studio.find(current_studio)
		@address = studio.address
	end

	def update
		studio = Studio.find(current_studio)
		id = studio.address.id
		@address = Address.update(id, params[:address])
		studio.address = @address

		redirect_to '/studios/profile'
	end

end

# all, morning, afternoon, night
 
  # #<Schedule id: 1, user_id: 1, mon: "morning", 
  # tue: "all", wed: "all", thu: "all", fri: "all", 
  # sat: "morning", sun: "all", 
  # created_at: "2013-09-26 00:12:22", 
  # updated_at: "2013-09-26 01:14:02", 
  # neighbourhood: "crown heights">