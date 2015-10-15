class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.integer :followers
      t.integer :following

      t.timestamps null: false
    end
  end
end
