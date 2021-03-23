class User < ApplicationRecord
    has_many :breweries
    has_many :beers, through: :breweries

    has_many :comments
end
