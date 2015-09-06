Rails.application.routes.draw do
  # get 'landing/index'

  resources :landings, only: [:index], path: "/" do
  	collection do
  		get :about, path: "/about"
  	end
  end

  resources :contacts, only: [:new,:create], path: "/contact"
  resources :portfolios, only: [:index,:show], path: "/portfolio"
  resources :posts, only: [:index,:show], path: "/blog/" do
    collection do
      post :filter_posts
    end
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root 'landings#index'
end
