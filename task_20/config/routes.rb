Rails.application.routes.draw do
  root 'products#index'

  get 'products/new'
  get 'pages/about'
  get 'pages/contacts'
  get 'products/:id' => 'products#show', as: 'product_show'
  delete 'products/:id/destroy' => 'products#destroy', as: 'product_delete'

  post 'products/create'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
