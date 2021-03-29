Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'sessions#home'
  
  
  get '/signup' => 'users#new'
  post '/signup' => 'users#create' 


  get '/login' => 'sessions#new'
  # the route that displays the login page
  post '/login' => 'sessions#create'
  # the route that processes the submission


  
  delete '/logout' => 'sessions#destroy'
  # we don't use "get '/logout' " so that the user does not see it in the URL bar
  
  resources :comments


  # NESTED ROUTES 
  resources :users do 
    resources :breweries, only: [:new, :create, :index]
  end
  
  # "shallow routing" is only: [:etc, :etc]. We only want something to be nested if it needs to be nested
  
  # /users/:user_id/breweries                                                               breweries#index
  # /users/:user_id/breweries                                                               breweries#create
  # /users/:user_id/breweries/new                                                           breweries#new




  resources :breweries do 
    resources :comments, only: [:new, :create, :index ]
  end

  # /breweries/:brewery_id/comments                                                       comments#index
  # /breweries/:brewery_id/comments                                                       comments#create
  # /breweries/:brewery_id/comments/new                                                     comments#new


  

end
