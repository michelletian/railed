Rails.application.routes.draw do
  get 'home/index'
  root to: 'home#index'
  get '/users', to: 'users#index', as: :users
  devise_for :users
  resources :users
  resources :bathrooms
  resources :reviews
  post 'reviews/new', to: 'reviews#update'
  get 'reviews/new', as: :review_things
end
