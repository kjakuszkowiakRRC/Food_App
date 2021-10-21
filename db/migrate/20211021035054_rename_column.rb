class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :restaurant_locations, :restaurants_id, :restaurant_id
    rename_column :restaurant_locations, :locations_id, :location_id
  end
end
