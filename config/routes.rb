Rails.application.routes.draw do

  resources :users
  root 'users#show'

  get 'signin' => 'sessions#new'
<<<<<<< HEAD
  post 'sessions/create', to: 'sessions#create'
=======
>>>>>>> 8fb8b8ed9a221b29a8a6e44c2fbe88db41111fc3
end
