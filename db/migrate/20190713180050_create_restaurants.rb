class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cuisine
      t.integer :like_id
      t.integer :zipcode
      t.integer :restaurant_event_id

      t.timestamps
    end
  end
end
