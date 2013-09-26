class WelcomeController < ApplicationController
	def index
		@addresses = Address.all
	end
	def brooklyn
		@search = []
	end
	def result
		@addresses = Address.all
	end
end
