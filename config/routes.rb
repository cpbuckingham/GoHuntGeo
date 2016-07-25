Rails.application.routes.draw do
  root :to => "root#show"
  get "/info" => "info#show"
  get "/contact" => "contact#show"
  get "/about" => "about#show"

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

  resources :users
  resources :dashboard



end
