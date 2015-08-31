Rails.application.routes.draw do
  get 'landing/index'

  resources :contacts, only: [:new,:create]
  resources :portfolios, only: [:index,:show]
  resources :posts, only: [:index,:show]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root 'landing#index'
end
