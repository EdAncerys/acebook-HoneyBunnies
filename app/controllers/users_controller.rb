class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    p @user
    if @user && @user.id != nil
      redirect_to '/sessions/new'
    else
      redirect_to '/'
    end
    p params
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password)
  end

end
