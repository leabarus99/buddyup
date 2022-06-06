Rails.application.routes.draw do
  devise_for :friends
  root to: 'pages#home'
  ressources :friends
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
