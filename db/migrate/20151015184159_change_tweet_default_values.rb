class ChangeTweetDefaultValues < ActiveRecord::Migration
  def change
    change_column_default(:tweets, :favorites, 0)
    change_column_default(:tweets, :retweets, 0)
  end
end
