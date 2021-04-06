class Comment < ApplicationRecord
    belongs_to :user 
    belongs_to :brewery
    validates :content, presence: true, length: { in: 2..500 }
    # this acts as the JOIN table; any table that contains 2 foreign keys
    
    #accepts_nested_attributes_for :brewery
    # class method that allows for nested attributes; nested attributes allow you to save attributes on associated records
    # creates/acts as a reader & writer
    
end
 