Rails.application.routes.draw do
  devise_for :users

  resources :moments
  resources :friends
  root to: 'pages#home'
<<<<<<< HEAD
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
>>>>>>> master
end
