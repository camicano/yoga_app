class StudiosController < ApplicationController
	def profile
		@studio = current_studio
		if @studio.address.present?
			@address = @studio.address
		else
			@address = Address.new
		end
	end

	def new_class
		@class = Yogaclass.new
	end	

	def create_class
		@class = Yogaclass.create(params[:yogaclass])
		@studio = Studio.find(current_studio)
		@studio.yogaclasses << @class

		redirect_to '/studios/profile/'
	end

	def edit_class
		@class = Yogaclass.find(params[:yogaclass_id])
	end

	def update_class
		@class = Yogaclass.update(params[:yogaclass_id], params[:yogaclass])
		redirect_to '/studios/profile'
	end

	def delete_class
		@class = Yogaclass.find(params[:yogaclass_id])
		@class.delete
		
		redirect_to '/studios/profile'
	end 
end
