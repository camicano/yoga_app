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
