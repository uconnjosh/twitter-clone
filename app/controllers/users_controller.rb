class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      # UserMailer.signup_confirmation(@user).deliver
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

private

  def user_params
    params.require(:user).permit(:handle, :email, :password, :password_confirmation)
  end
end
