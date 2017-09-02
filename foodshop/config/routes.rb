Rails.application.routes.draw do

  root 'shops#index'

  resources :shops, only: [:show]
  resources :foods, only: [:show]
  resources :orders, only: [:show]
  resources :order_items, only: [:show]

  namespace :admin do
    resources :shops, except: [:show]
    resources :foods, except: [:show]
    resources :orders, except: [:show]
    resources :order_items, except: [:show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
