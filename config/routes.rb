Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  get "profil", to: 'pages#profil'
  get "home", to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :friends
  resources :reservations
end
