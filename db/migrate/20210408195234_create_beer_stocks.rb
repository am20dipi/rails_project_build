class CreateBeerStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :beer_stocks do |t|
      t.integer :quantity
      t.integer :brewery_id
      t.integer :beer_id
      t.timestamps
    end
  end
end
