Yoga::Application.routes.draw do
  # devise
  devise_for :studios, :controllers => { :sessions => "studios/sessions", :registrations => "studios/registrations"  }
  devise_for :users, :controllers => { :sessions => "users/sessions", :registrations => "users/registrations" }

  # User routes
  get "/profile", :to => "users#profile", :as => "user_profile"
  get '/profile/new', :to => "schedules#new", :as => "new_schedule"
  post '/profile/create', :to => "schedules#create", :as => "create_schedule"
  get '/profile/edit', :to => "schedules#edit", :as => "edit_schedule"
  put '/profile/update', :to => "schedules#update", :as => "update_schedule"
  
  # studio routes
  get "/studios/profile", :to => "studios#profile", :as => "studio_profile"
  get 'studios/profile/new', :to => "addresses#new", :as => "new_address"
  post 'studios/profile/create', :to => "addresses#create", :as => "create_address"
  get 'studios/profile/edit', :to => "addresses#edit", :as => "edit_address"
  put 'studios/profile/update', :to => "addresses#update", :as => "update_address"

  # yogaclass routes
  get "/studios/new_class", :to => "studios#new_class", :as => "new_yogaclass"
  post "/studios/create_class", :to => "studios#create_class", :as => "create_yogaclass"
  get "/studios/profile/class/:yogaclass_id", :to => "studios#edit_class", :as => "edit_yogaclass"
  put "/studios/profile/class/:yogaclass_id", :to => "studios#update_class", :as => "update_yogaclass"
  delete "/studios/profile/class/:yogaclass_id", :to => "studios#delete_class", :as => "delete_yogaclass"
  get "/studios/class/:yogaclass_id/show", :to => "studios#show", :as => "show_yogaclass"
  post "/studios/class/:yogaclass_id/show", :to => "studios#post", :as => "post_yogaclass"

  # welcome routes
  root :to => 'welcome#index', :as => "index"
  get "/brooklyn", :to => 'welcome#brooklyn', :as => "brooklyn"
  post '/', :to => 'welcome#search', :as => 'search'
  get '/result', :to => 'welcome#result', :as => 'result'
  get '/test', :to => 'welcome#test'

end
