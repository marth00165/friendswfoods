class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :user_event_id
      t.integer :restaurant_event_id
      t.boolean :full
      t.integer :amount_of_members

      t.timestamps
    end
  end
end
