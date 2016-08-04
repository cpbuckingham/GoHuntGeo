Rails.application.routes.draw do
  root :to => "root#show"
  get "/info" => "info#show"
  get "/contact" => "contact#show"
  get "/about" => "about#show"

  get "/log_in" => "sessions#new", :as => "log_in"
  post "/log_in" => "sessions#create"
  get "/log_out" => "sessions#destroy", :as => "log_out"

  get "/sign_up" => "users#new", :as => "sign_up"
  post "/sign_up" => "users#create"

  resources :users
  resources :dashboard

end
