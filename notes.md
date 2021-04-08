My App = Brewery Tour

Models: 
-  User 
-  Brewery
-  Beer 
-  Comments 

Associations: 
-  A Beer belongs_to a Brewery
-  A Brewery has_many Beers

-  A Brewery has_many Comments
-  A Comment belongs_to a Brewery


-  A Comment belongs_to an User
-  A User has_many Comments, through: a Brewery


-  A Brewery belongs_to a User
-  A User has_many Breweries

-  A Beer belongs_to a User
-  A User has_many Beers, through: a Brewery

 Brewery
 - name
 - location 
 - year established ?


 User
 - name / username
 - email
 - password_digest


 Comment
 - content





 <!-- f.label :beer_id -->
    <!-- <%= f.collection_select :beer_id, Beer.all, :id, :name, prompt: true %> -->



    <h4>Comments:</h4>
    <% @breweries.comments.each do |c| %>
        <li><%= link_to c.content, comment_path(c) %></li>
    <% end %>
<br>
    <%= link_to "Add a Comment", new_comment_path %>
    <%= link_to "See All Comments", brewery_comments_path(@brewery) %>





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




  resources :breweries do 
    resources :comments, only: [:new, :create, :index, :show ]
  end

  # /breweries/:brewery_id/comments                                                       comments#index
  # /breweries/:brewery_id/comments/edit                                                       comments#create
  # /breweries/:brewery_id/comments/new                                                     comments#new

  resources :breweries do 
    resources :beers, only: [:new, :create, :show ]
  end
