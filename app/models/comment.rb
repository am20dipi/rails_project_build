class Comment < ApplicationRecord
    belongs_to :user 
    belongs_to :brewery

    # this acts as the JOIN table; any table that contains 2 foreign keys
end
