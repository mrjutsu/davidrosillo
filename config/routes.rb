Rails.application.routes.draw do
  # get 'landing/index'

  resources :landings, only: [:index], path: "/" do
  	# collection do
  		get :about, on: :collection, path: "/about"
  	# end
  end

  resources :contacts, only: [:new,:create], path: "/contact"
  resources :portfolios, only: [:index,:show], path: "/portfolio"
  resources :posts, only: [:index,:show], path: "/blog/"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root 'landings#index'
end
