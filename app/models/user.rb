class User < ApplicationRecord
    has_many :breweries
    has_many :beers, through: :breweries
end
