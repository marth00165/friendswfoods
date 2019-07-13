class AddEventimgToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :eventimg, :string
  end
end
