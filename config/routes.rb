Rails.application.routes.draw do
  devise_for :users

  resources :moments
  resources :friends
  root to: 'pages#home'
end
