class User < ApplicationRecord
    has_many :breweries, through: :comments
    has_many :comments


    has_secure_password #authenticate, auto validates the password
    validates :email, presence: { message: "Email must be given" }, uniqueness: true
    validates :name, presence: { message: "Name must be given" } 
end
 