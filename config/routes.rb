Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  get '/admin', to: 'admin/books#index'
  ActiveAdmin.routes(self)
  root 'categories#index'
  resources :books
  resources :categories
  resources :autors
end
