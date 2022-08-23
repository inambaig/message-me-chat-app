class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    p user
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
