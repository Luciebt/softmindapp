Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get 'profile', to: 'users#show'
  end

  root to: 'pages#home'

  get "/play", to: "pages#play", as: :play
  get "moments/success/:friend_id", to: "moments#success", as: :moment_success
  get "moments/none", to: "moments#none", as: :moment_none

  # commented out friends / token related code to test moments uploads

  resources :moments, except: [:new] do
  get "/carrousel", to: "moments#carrousel"
end
get "moments/new/:token", to: "moments#new", as: :new_moment do

end


  resources :friends

end
