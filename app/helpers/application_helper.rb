module ApplicationHelper
  def logged_in?
    session[:user]
  end

  def is_user?
    session[:usertype] == 0 
  end
end
