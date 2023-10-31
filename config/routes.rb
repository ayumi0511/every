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
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
