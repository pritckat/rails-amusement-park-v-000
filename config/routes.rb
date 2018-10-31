Rails.application.routes.draw do

  resources :users
  root 'sessions#new'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
