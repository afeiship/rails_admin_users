RailsAdminUsers::Engine.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root to: "users#index"
  get "login", to: "sessions#new"
  delete "logout", to: "sessions#destroy"
end
