class AddRestaurantimgToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :restaurantimg, :string
  end
end
