Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :moments
  get "/carrousel", to: "moments#carrousel"
  resources :friends
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
