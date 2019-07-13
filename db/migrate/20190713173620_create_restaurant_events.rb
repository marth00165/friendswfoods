class CreateRestaurantEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_events do |t|
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
