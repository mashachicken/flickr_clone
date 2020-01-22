class Posts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.column(:id_users, :int)
      t.column(:description, :string)
      t.column(:tagged_id, :int)

      t.timestamps
    end
  end
end
