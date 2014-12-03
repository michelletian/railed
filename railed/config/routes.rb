Rails.application.routes.draw do
  get 'home/index'
  root to: 'home#index'
  get '/users', to: 'users#index', as: :users
  devise_for :users
  resources :users
  resources :bathrooms
  resources :reviews
end
