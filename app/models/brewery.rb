class Brewery < ApplicationRecord
    belongs_to :user
    has_many :beers

    has_many :comments
end
