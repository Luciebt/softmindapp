Rails.application.routes.draw do
  devise_for :users
  
  root to: 'pages#home'

  resources :moments
  get "/carrousel", to: "moments#carrousel"
  resources :friends

end
