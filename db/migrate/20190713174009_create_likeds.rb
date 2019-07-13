class CreateLikeds < ActiveRecord::Migration[5.2]
  def change
    create_table :likeds do |t|
      t.string :restaurant_id
      t.string :user_id

      t.timestamps
    end
  end
end
