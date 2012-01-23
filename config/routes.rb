Techbot3::Application.routes.draw do

  get "archives/index"

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  # User management
  resources :users, :except => [:index]
  resources :sessions, :only => [:create, :destroy]

  get "login" => "sessions#new", :as => :login
  match "logout" => "sessions#destroy", :as => :logout
  get "register" => "users#new", :as => :register

  get "forgot_password" => "users#forgot_password", :as => :forgot_password
  post "password_reset" => "users#reset_password", :as => :reset_password

  # Root path management
  root :to => 'editions#latest'
  get 'home' => 'editions#latest', :as => :home
  
  # Read edition
  get 'editions/:id' => 'editions#show', :as => :read_edition
  get 'articles/:id' => 'articles#show', :as => :read_article
  post 'articles/:id/comment' => 'comments#create', :as => :post_comment

end
