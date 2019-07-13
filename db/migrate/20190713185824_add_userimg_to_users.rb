class AddUserimgToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :userimg, :string
  end
end
