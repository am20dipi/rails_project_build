class Beer < ApplicationRecord
    validates :name, presence: true
    validates :type, presence: true
    validates :abv, presence: true, numericality: true
    validates :description, presence: true

    has_many :breweries, through: :beer_stock 
end
