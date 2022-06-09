Rails.application.routes.draw do
  devise_for :users

  root to: 'friends#index'
  get "profil", to: 'pages#profil'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :friends
  resources :reservations
  resources :devise
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
