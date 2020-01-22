class AddUserTables < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fav_img_id, :int
  end
end
