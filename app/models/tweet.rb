class Tweet < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :body, :user_id
end
