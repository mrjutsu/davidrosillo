Rails.application.routes.draw do
  # get 'landing/index'

  resources :landings, only: [:index] do
  	# collection do
  		get :about, on: :collection
  	# end
  end

  resources :contacts, only: [:new,:create]
  resources :portfolios, only: [:index,:show]
  resources :posts, only: [:index,:show]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root 'landings#index'
end
