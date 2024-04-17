Rails.application.routes.draw do
  resources :groups
  get 'tools/index'
  resources :profiles
  resources :subscriptions
  resources :apps
  resources :libraries
  resources :schedules
  resources :sections

  # devise_for :users
  devise_for :users, controllers: {
    registrations: 'users'
  }
  root 'main#home'

  resources :users
  get 'section', to: 'section#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
