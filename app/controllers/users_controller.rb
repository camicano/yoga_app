class UsersController < ApplicationController
	def profile
		@user = current_user
		if @user.schedule.present?
			@schedule = @user.schedule
		else
			@schedule = Schedule.new
		end
	end
end

#             user_schedules POST   /users/:user_id/schedules(.:format)          schedules#create
#          new_user_schedule GET    /users/:user_id/schedules/new(.:format)      schedules#new
#         edit_user_schedule GET    /users/:user_id/schedules/:id/edit(.:format) schedules#edit
#              user_schedule PUT    /users/:user_id/schedules/:id(.:format)      schedules#update
#                  edit_user GET    /users/:id/edit(.:format)                    users#edit
#                       user PUT    /users/:id(.:format)                         users#update
#                       root        /                                            welcome#in
 # get "/profile", :to => "users#profile", :as => "user_profile"

