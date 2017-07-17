Rails.application.routes.draw do
  get 'articles/new'
  get 'articles/index'
  get 'articles/:id' => 'articles#show', as: 'article_show'
  post 'articles/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
