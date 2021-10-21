class DropJoinTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :restaurant_locations
  end
end
