Rails.application.routes.draw do

  resources :users
  root '/signin'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
end
