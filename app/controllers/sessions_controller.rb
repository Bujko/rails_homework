class SessionsController < ApplicationController
  def create
    @user = User.authenticate params[:email], params[:password]
    if @user
      session[:user] = @user.id
      redirect_back fallback_location: root_path
    else
      flash[:notice] = "Invalid e-mail address or password"
      redirect_back fallback_location: root_path
    end
  end

  def destroy
    reset_session
    flash[:notice] = "Logged out succesfully"
    redirect_back fallback_location: root_path
  end
end
