class Brewery < ApplicationRecord
    has_many :comments
    accepts_nested_attributes_for :comments

    has_many :users, through: :comments
    has_many :beers, through: :beer_stock

    validates :name, presence: true
    validates :location, presence: true 
    validates :year_established, presence: true, numericality: { message: "%{value} seems wrong" }, length: { is: 4 }
end
