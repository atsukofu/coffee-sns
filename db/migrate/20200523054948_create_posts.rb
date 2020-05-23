class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :user_id, foreign_key: true, null: false
      t.string :product, null: false
      t.string :shop
      t.string :brand
      t.integer :price, null: false
      t.integer :per,  null: false, default: 1
      t.integer :stars, null: false, default: 3
      t.integer :acidity, null: false, default: 3
      t.integer :bitterness, null: false, default: 3
      t.integer :sweetness, null: false, default: 3
      t.integer :fragrance, null: false, default: 3
      t.integer :richiness, null: false, default: 3
      t.timestamps
    end
  end
end
