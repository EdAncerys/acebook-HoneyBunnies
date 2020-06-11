class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/"
  end

  def create
    @user = User.find_by(email: params[:user][:email].downcase)
    # If user exists and the correct password has been entered then login
    if @user&.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to "/posts"
    else
      redirect_to '/sessions/new', notice: 'Email and/or password is incorrect'
    end
  end
end
