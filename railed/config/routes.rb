Rails.application.routes.draw do

  get 'welcome/index'
  root to: 'welcome#index'
  get '/users', to: 'users#index', as: :users
end
