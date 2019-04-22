RailsAdminUsers::Engine.routes.draw do
  resources :users
  resources :sessions, only: [:create]

  root to: "users#index"
  get "login", to: "sessions#new"
  delete "logout", to: "sessions#destroy"
end
