Rails.application.routes.draw do

  root to: "users#index"

  resources :users, { :except => :delete }

  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy", :via => :delete


end
