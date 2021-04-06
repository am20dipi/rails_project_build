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