Rails.application.routes.draw do

  root to: "users#index"

  resources :users, { :except => :delete }

  get "/register" => "users#new"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy", :via => :delete


end
