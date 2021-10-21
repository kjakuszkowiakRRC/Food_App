class CreateRestaurantLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_locations do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.string :address

      t.timestamps
    end
  end
end
