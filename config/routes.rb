Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "home#index"

  get "pays/result/:id" => "pays#result", as: "pay"
  get "pays/receive/:id" => "pays#receive", as: "receive"
  get "pays/notification" => "pays#notification"
  resources :pays
  resources :home
  resources :users, only: [:show]
end
