class WelcomeController < ApplicationController
	def index
		@addresses = Address.all
	end
	def brooklyn
		@search = []
	end
end
