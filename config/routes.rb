Rails.application.routes.draw do
  resources :tags
  resources :tags
  # get 'landing/index'

  resources :landings, only: [:index], path: "/" do
  	collection do
      post :index
      post :search
      
  		get :about, path: "/about"
  	end
  end

  resources :contacts, only: [:new,:create], path: "/contact"
  resources :portfolios, only: [:index,:show], path: "/portfolio" do
    collection do
      post :index
    end
  end
  resources :posts, only: [:index,:show], path: "/blog/" do
    collection do
      post :index
    end
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root 'landings#index'
end
