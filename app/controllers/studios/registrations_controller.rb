class Studios::RegistrationsController < Devise::RegistrationsController
	def after_sign_up_path_for(resource)
		new_address_path
	end
end