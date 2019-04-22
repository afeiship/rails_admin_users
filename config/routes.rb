RailsAdminUsers::Engine.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root to: "users#index"
  get "login", to: "sessions#new"
  get "logout", to: "sessions#destroy"
end
