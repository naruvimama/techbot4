Techbot3::Application.routes.draw do

  resources :jobs, :only=>[:index, :show]
  resources :ads, :only => [:index]

  match "oauth/callback" => "oauths#callback"

  match "oauth/:provider" => "oauths#oauth", :as => :auth_at_provider

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
  
  # Read editions
  get 'archive' => 'editions#index', :as => :archive
  
  # Read edition
  get 'editions/:id' => 'editions#show', :as => :read_edition
  get 'articles/:id' => 'articles#show', :as => :read_article
  post 'articles/:id/comment' => 'comments#create', :as => :post_comment

  # Get feedback
  post "feedback" => "feedbacks#create"
  
  # classified
  resources :classifiedspreads, :only =>[:index,:show] do
    member do
      get :latest
    end
  end
  # Static resources  - last line
  get ":action" => "static#:action"
end
