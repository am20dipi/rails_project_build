class AddUserIdToBreweries < ActiveRecord::Migration[6.1]
  def change
    add_column :breweries, :user_id, :integer
    add_index :breweries, :user_id
  end
end
