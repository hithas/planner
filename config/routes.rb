Rails.application.routes.draw do
  
  get '/sessions/new' => 'sessions#new'
  get '/sessions/create' => 'sessions#create'
  get '/sessions/destroy' => 'sessions#destroy'
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

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
  
   #------------------------------
  
   # Routes for the Goal resource:
  # CREATE
  get '/new_goal' => 'goals#new'
  get '/create_goal' => 'goals#create'

  # READ
  get '/goals' => 'goals#index'
  get '/goals/:id' => 'goals#show'

  # UPDATE
  get '/goals/:id/edit' => 'goals#edit'
  get '/goals/:id/update' => 'goals#update'
  get '/goals/:id/add_checkpoint' => 'goals#add_checkpoint'

  # DELETE
  get '/goals/:id/destroy' => 'goals#destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
