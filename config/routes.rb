Techbot3::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :users, :except => [:index]
  resources :sessions, :only => [:create, :destroy]
  get "login" => "sessions#new", :as => :login
  match "logout" => "sessions#destroy", :as => :logout
  get "register" => "users#new", :as => :register

  root :to => 'editions#latest'
  
  get 'home' => 'editions#latest', :as => :home
  get 'editions/:id' => 'editions#show', :as => :read_edition
  get 'articles/:id' => 'articles#show', :as => :read_article
  post 'articles/:id/comment' => 'comments#create', :as => :post_comment

end
