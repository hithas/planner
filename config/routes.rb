Rails.application.routes.draw do
  
  get '/sessions/new' => 'sessions#new'
  get '/sessions/create' => 'sessions#create'
  get '/sessions/destroy' => 'sessions#destroy'
  
  root to: 'sessions#home'
  # Routes for the Day resource:
  # CREATE
  get '/new_day' => 'days#new'
  get '/create_day' => 'days#create'

  # READ
  get '/days' => 'days#index'
  get '/days/:id' => 'days#show'

  # UPDATE
  get '/days/:id/edit' => 'days#edit'
  get '/days/:id/update' => 'days#update'

  # DELETE
  get '/days/:id/destroy' => 'days#destroy'
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get '/new_category' => 'categories#new'
  get '/create_category' => 'categories#create'

  # READ
  get '/categories' => 'categories#index'
  get '/categories/:id' => 'categories#show'

  # UPDATE
  get '/categories/:id/edit' => 'categories#edit'
  get '/categories/:id/update' => 'categories#update'

  # DELETE
  get '/categories/:id/destroy' => 'categories#destroy'
  #------------------------------

  # Routes for the Event resource:
  # CREATE
  get '/new_event' => 'events#new'
  get '/create_event' => 'events#create'

  # READ
  get '/events' => 'events#index'
  get '/events/:id' => 'events#show'

  # UPDATE
  get '/events/:id/edit' => 'events#edit'
  get '/events/:id/update' => 'events#update'

  # DELETE
  get '/events/:id/destroy' => 'events#destroy'
  #------------------------------
  
  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'
  get '/users/:id/theme' => 'users#theme'
  get '/users/:id/change_theme' => 'users#change_theme'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
  
   #------------------------------
  
   # Routes for the Goal resource:
  
  # CREATE
  get '/new_goal' => 'goals#new'
  get '/create_goal' => 'goals#create'

  # READ
  get '/goals' => 'goals#index'
  get '/category_index' => 'goals#category_index'
  get '/goals/:id' => 'goals#show'

  # UPDATE
  get '/goals/:id/edit' => 'goals#edit'
  get '/goals/:id/update' => 'goals#update'
  get '/goals/:id/:page/add_checkpoint' => 'goals#add_checkpoint'
  get '/goals/:id/:page/new_checkpoint' => 'goals#new_checkpoint'

  # DELETE
  get '/goals/:id/destroy' => 'goals#destroy'

end
