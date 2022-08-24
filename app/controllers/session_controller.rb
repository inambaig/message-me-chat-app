class SessionController < ApplicationController
  before_action :not_require_user, only: [:new, :create]
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      flash[:notice] = "Log in successful"
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:error] = "Incorrect credentials"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have successfully logged out."
    redirect_to login_path
  end

  private

  def not_require_user
    if logged_in?
      flash[:error] = "You are already logged in."
      redirect_to root_path
    end
  end
end
