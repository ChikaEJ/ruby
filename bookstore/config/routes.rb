Rails.application.routes.draw do
  get 'comments/create'

  root 'books#main'
  get 'books/books' => 'books#books_index', as: 'books'
  get 'authors/authors' => 'authors#authors_index', as: 'authors'
  get 'genres/genres' => 'genres#genres_index', as: 'genres'
  resources :books, only: [:show] do
    resources :comments
  end
  resources :authors, only: [:show]
  resources :genres, only: [:show]

  namespace :admin do
    resources :books, except: [:show]
    resources :authors, except: [:show]
    resources :genres, except: [:show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
