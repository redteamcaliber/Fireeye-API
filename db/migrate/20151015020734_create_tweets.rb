class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :body
      t.integer :favorites
      t.integer :retweets
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
