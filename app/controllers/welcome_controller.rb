class WelcomeController < ApplicationController
	
	def index
		@addresses = Address.all
	end
end
