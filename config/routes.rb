Yoga::Application.routes.draw do
  devise_for :studios

  devise_for :users
  
  get "/profile", :to => "users#profile", :as => "user_profile"
  get '/profile/edit', :to => "schedules#new", :as => "new_schedule"
  post '/profile/create', :to => "schedules#create", :as => "create_schedule"
  
  get "/studios/profile", :to => "studios#profile", :as => "studio_profile"
  get 'studios/profile/edit', :to => "addresses#new", :as => "new_address"
  post 'studios/profile/create', :to => "addresses#create", :as => "create_address"

  get "/studios/new_class", :to => "studios#new_class", :as => "new_yogaclass"
  post "/studios/create_class", :to => "studios#create_class", :as => "create_yogaclass"

  get "/studios/profile/class/:yogaclass_id", :to => "studios#edit_class", :as => "edit_yogaclass"
  put "/studios/profile/class/:yogaclass_id", :to => "studios#update_class", :as => "update_yogaclass"
  delete "/studios/profile/class/:yogaclass_id", :to => "studios#delete_class", :as => "delete_yogaclass"

  root :to => 'welcome#index'

end
