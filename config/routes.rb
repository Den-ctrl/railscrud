Rails.application.routes.draw do
  devise_for :users

  resources :groups
  get 'tools/index'
  resources :profiles
  resources :subscriptions
  resources :apps
  resources :libraries do
    resources :library_sections
  end
  resources :schedules
  resources :sections do
    resources :library_sections
  end
  resources :users

  # devise_for :users
 
  root 'users#index'

  # Selectize json data
  get '/get_data', to: 'users#get_data'
  
  get 'section', to: 'section#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
