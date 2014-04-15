class Follow < ActiveRecord::Base
belongs_to :user

  def find_handle
    follow = User.find_by(id: self.stalk_id)
    follow.handle
   end
  def find_tweets
    follow = User.find_by(id: self.stalk_id)
    tweets = Tweet.where(user_id: follow.id )
    tweets
  end
end
