My App = Brewery Tour

Models: 
-  User 
-  Brewery
-  Beer 
-  Comments 
-  Rating  ? 

Associations: 
-  A Beer belongs_to a Brewery
-  A Brewery has_many Beers

-  A Brewery has_many Comments
-  A Comment belongs_to a Brewery

-  A Brewery has_many Ratings
-  A Rating belongs_to a Brewery

-  A Comment belongs_to an User
-  A User has_many Comments, through: a Brewery

-  A User has_many Ratings, through: a Brewery
-  A Rating belongs_to a User

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

 Rating
 - content / number?




 <!-- f.label :beer_id -->
    <!-- <%= f.collection_select :beer_id, Beer.all, :id, :name, prompt: true %> -->



    <h4>Comments:</h4>
    <% @breweries.comments.each do |c| %>
        <li><%= link_to c.content, comment_path(c) %></li>
    <% end %>
<br>
    <%= link_to "Add a Comment", new_comment_path %>
    <%= link_to "See All Comments", brewery_comments_path(@brewery) %>