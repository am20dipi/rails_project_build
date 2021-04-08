class AddUserIdToBreweries < ActiveRecord::Migration[6.1]
  def change
    add_column :breweries, :creator_id, :integer, foreign_key: {to_table: users}, index: true
  end
end
