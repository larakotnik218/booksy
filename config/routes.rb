require 'sidekiq/web'

Rails.application.routes.draw do
  resources :books
  resources :home
  devise_for :users
  root to: 'books#index'

  get '/api_book' => 'home#api_book'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
