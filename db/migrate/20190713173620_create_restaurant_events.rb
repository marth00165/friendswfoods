class CreateRestaurantEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_events do |t|
      t.string :name
      t.string :restaurant_location
      t.integer :event_id
      t.boolean :full
      t.integer :amount_of_members

      t.timestamps
    end
  end
end
