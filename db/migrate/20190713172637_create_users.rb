class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.string :gender
      t.string :location
      t.string :password
      t.string :fav_meal
      t.string :availability

      t.timestamps
    end
  end
end
