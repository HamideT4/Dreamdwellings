Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }

  get "/account" => 'account#index', as: :account
  get "/profile/:id" => 'account#profile', as: :profile
  #get 'account/properties'
  #get 'account/reports'
  
  resources :properties
  devise_for :agencies
  root to: 'public#main'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
