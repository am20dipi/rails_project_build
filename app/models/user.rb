class User < ApplicationRecord
    has_many :breweries
    has_many :beers, through: :breweries

    has_many :comments, through: :breweries


    has_secure_password #authenticate, auto validates the password
    validates :email, presence: { message: "Email must be given" }, uniqueness: true
    validates :name, presence: { message: "Name must be given" } 
end
 