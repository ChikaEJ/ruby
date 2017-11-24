Rails.application.routes.draw do

  get 'sessions/new'

  get '/signup' => 'admin/users#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/about' => 'admin#about'




  root 'photographers#main'
  resources :photographers, only: [:show]
  resources :photos, only: [:show]
  get '/photographers_all' => 'photographers#index_photographers'
  get '/photos_all' => 'photos#photos_all'
  # Example resource route within a namespace:
    namespace :admin do
      # Directs /admin/products/* to Admin::ProductsController
      # (app/controllers/admin/products_controller.rb)
      get 'show_photographer/:id' => 'photographers#admin_show'
      resources :photographers, except: [:show]
      resources :photos, except: [:show]
      resources :users
    end
end
