Rails.application.routes.draw do
    resources :articles
    resources :posts

    get '/users' => 'users#index'
    get '/users/new' => 'users#new', as: 'new_user'
    post '/users' => 'users#create', as: 'create_user'

    get 'up' => 'rails/health#show', as: rails :rails_health_check


    root "articles#index"
  end
  