Rails.application.routes.draw do
  get 'top_pages/index'
  get '/subscriptions', to: 'subscriptions#index'
  get '/orders', to: 'orders#index'
  get '/users', to: 'users#index'
  get '/posts', to: 'posts#index'
  get '/add_stores', to: 'add_stores#index'
  get '/datas', to: 'data#index'
  get '/buttons', to: 'buttons#index'

  root 'top_pages#index'
  
  resources :tweets, only: [:index, :new, :create, :destroy]
  
end
