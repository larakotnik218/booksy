require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :books
  resources :home
  resources :contact, only: [:index, :new, :create]
  devise_for :users
  root to: 'books#index'

  get '/api_book' => 'home#api_book'
  get '/pdf' => 'books#pdf'
  # get '/contact/:id' => 'contact#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
