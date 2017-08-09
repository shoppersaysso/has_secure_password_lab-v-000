class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params).save
  end

  def show
    user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation)
  end

end
