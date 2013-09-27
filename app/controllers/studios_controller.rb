class StudiosController < ApplicationController
	
	def profile
		@studio = current_studio
		@address = @studio.address
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

	def show
		@yogaclass = Yogaclass.find(params[:yogaclass_id])
		@studio = @yogaclass.studio.address
		@review = Review.new
		yogaclass = Yogaclass.find(params[:yogaclass_id])
		@reviews = yogaclass.reviews
	end

	def post
		@review = Review.create(params[:review])
		yogaclass = Yogaclass.find(params[:yogaclass_id])
		yogaclass.reviews << @review
		
		redirect_to show_yogaclass_path
	end
end
