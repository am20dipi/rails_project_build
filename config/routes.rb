Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'sessions#home'
  
  
  get '/signup' => 'users#new'
  post '/signup' => 'users#create' 
  
  resources :users
  resources :breweries
  resources :beers
  resources :comments
end
