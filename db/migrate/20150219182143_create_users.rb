class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :karma
      t.date :birthday

      t.timestamps null: false
    end
  end
end
