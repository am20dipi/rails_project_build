class Brewery < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :users, through: :comments

    validates :name, presence: true
    validates :location, presence: true 
    validates :year_established, presence: true, numericality: { message: "%{value} seems wrong" } 
end
