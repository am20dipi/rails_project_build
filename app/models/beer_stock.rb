class BeerStock < ApplicationRecord
    belongs_to :beer
    belongs_to :brewery 

    validates :quantity, presence: true, numericality: true 
end
