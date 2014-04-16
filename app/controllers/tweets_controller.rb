class TweetsController < ApplicationController
   def index
    @tweets = Tweet.all
    @tweet = Tweet.new
    @follow = Follow.new
    @users = User.all
   end

   def create
    @tweet = Tweet.create(tweet_params)
    redirect_to tweets_path
  end

  def new
    @tweet = Tweet.new
  end

  def show
    @tweet = Tweet.find_by(params[:id])
  end

  def destroy
    @tweet = tweet.find_by(params[:id])
    @tweet.delete
    redirect_to('users')
  end

private

   def tweet_params
     params.require(:tweet).permit(:name, :user_id)
   end
end
