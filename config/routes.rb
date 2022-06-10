Rails.application.routes.draw do
  devise_for :users

  root to: 'friends#index'
  get "profil", to: 'pages#profil'
  get "chatroom", to: 'pages#chatroom'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :friends do
    resources :reviews, only: :create
  end
  resources :reservations
  resources :devise
  resources :reviews, only: :destroy
end
