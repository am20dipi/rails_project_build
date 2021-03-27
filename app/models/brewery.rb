class Brewery < ApplicationRecord
    has_many :users, through: comments
    has_many :comments

    validates :name, presence: true
    validates :location, presence: true 
    validates :year_established, presence: true, numericality: { message: "%{value} seems wrong" } 
end
