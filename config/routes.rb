Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get 'profile', to: 'users#show'
  end

  root to: 'pages#home'

  get "/play", to: "pages#play", as: :play
  get "moments/success", to: "moments#success", as: :moment_success

  # commented out friends / token related code to test moments uploads

  resources :moments, except: [:new] do
  # , except: [:new]
  get "/carrousel", to: "moments#carrousel"
  # get "/moments/new/:friend_id/:token", to: "moments#new", as: :new_moment
  end
  get "moments/new/:token", to: "moments#new", as: :new_moment


  resources :friends

end
