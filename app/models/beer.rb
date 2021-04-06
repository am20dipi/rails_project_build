class Beer < ApplicationRecord
    validates :name, presence: true
    validates :type, presence: true
    validates :abv, presence: true, numericality: true
    validates :description, presence: true


    belongs_to :user
    belongs_to :brewery 
end
