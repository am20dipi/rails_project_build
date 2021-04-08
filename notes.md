My App = Brewery Tour

Models: 
-  User 
-  Brewery
-  Beer 
-  Comments 
- Beer Stock

Associations: 
-  A Beer has_many Breweries, through: :beer_stock
-  A Brewery has_many Beers, through: :beer_stock

-  A Brewery has_many Comments
-  A Comment belongs_to a Brewery


-  A Comment belongs_to an User
-  A User has_many Comments, through: a Brewery


-  A Brewery belongs_to a User
-  A User has_many Breweries

-  A Beer belongs_to a User
-  A User has_many Beers, through: a Brewery


-  Beer stock belongs_to Brewery
-  Beer stock belongs_to Beer

 Brewery
 - name
 - location 
 - year established
 - user_id 

 Beer Stock
 - quantity
 - brewery_id
 - beer_id


 User
 - name / username
 - email
 - password_digest


 Comment
 - content
 - brewery_id 
 - user _id

 Beer 
 - name
 - type
 - abv
 - description 








    




  <div class="nav-bar">
    <a class="navbar-link <%= active_css(root_path)%>" href="/">Home</a>
    <a class="navbar-link <%= active_css(breweries_path)%>" href="/breweries">Breweries</a>
    <a class="navbar-link <%= active_css(new_brewery_path)%>" href="/breweries/new">New Brewery</a>
  </div>



  # NESTED ROUTES 
  resources :users do 
    resources :breweries, only: [:new, :create, :index]
  end
  
  # "shallow routing" is only: [:etc, :etc]. We only want something to be nested if it needs to be nested
  
  # /users/:user_id/breweries                                                               breweries#index
  # /users/:user_id/breweries                                                              breweries#create
  # /users/:user_id/breweries/new                                                           breweries#new




