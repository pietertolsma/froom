class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :category_id
      t.integer :user_id
      t.string :title
      t.text :content
      t.integer :likes

      t.timestamps null: false
    end
  end
end
