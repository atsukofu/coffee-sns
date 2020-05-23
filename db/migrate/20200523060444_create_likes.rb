class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :post_id, foreign_key: true, null:false
      t.integer :user_id, foreign_key: true, null:false
      t.timestamps
    end
  end
end
