class User < ApplicationRecord
    has_many :breweries
    has_many :comments
    has_many :beers, through: :brewery

    has_secure_password #authenticate, auto validates the password
    validates :email, presence: { message: "Email must be given" }, uniqueness: true
    validates :name, presence: { message: "Name must be given" }, length: {in: 2..40 } 

end
 


