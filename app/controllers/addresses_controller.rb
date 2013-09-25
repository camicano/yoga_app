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
end
