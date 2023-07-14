Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get "/account" => 'account#index', as: :account
  #get 'account/properties'
  #get 'account/reports'
  
  resources :properties
  devise_for :agencies
  root to: 'public#main'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
