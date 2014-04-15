class FollowsController < ApplicationController
   def index
    @follows = Follow.all
    @follow = Follow.new
   end
 def create
    @follow = Follow.create(follow_params)

    redirect_to tweets_path
  end

  def new
    @follow = Follow.new
  end

  def show
    @follow = Follow.find_by(params[:id])
  end

  def destroy
    @follow = Follow.find_by(params[:id])
    @follow.delete
    redirect_to('users')
  end

private

   def follow_params
     params.require(:follow).permit(:stalk_id, :user_id)
   end
end
