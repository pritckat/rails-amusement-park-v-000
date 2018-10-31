Rails.application.routes.draw do

  resources :users
  root 'users#show'
  get '/signin' => 'sessions#new'
end
