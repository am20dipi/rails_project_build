My App = Brewery Tour

Models: 
-  User 
-  Brewery
-  Beer 
-  Comments 
-  Rating 

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

-  A Beer belongs_to a User, through: a Brewery
-  A User has_many Beers, through: a Brewery

 Brewery
 - name
 - location 
 - year established ?
 - number of beers ?


 User
 - name / username
 - email
 - password


 Comment
 - content

 Rating
 - content / number?