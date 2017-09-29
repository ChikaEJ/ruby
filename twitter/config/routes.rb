Rails.application.routes.draw do



  root 'home#index'

  devise_for :users, controllers: {
        sessions: 'users/sessions'

      }

  get 'users/id' => 'users#show'

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
