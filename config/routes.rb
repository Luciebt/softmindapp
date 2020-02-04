Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get "/play", to: "pages#play", as: :play

  # commented out friends / token related code to test moments uploads

  resources :moments do
  # , except: [:new]
  get "/carrousel", to: "moments#carrousel"
  # get "/moments/new/:friend_id/:token", to: "moments#new", as: :new_moment
  end
  resources :friends

end
