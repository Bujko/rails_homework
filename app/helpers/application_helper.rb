module ApplicationHelper
  def logged_in?
    session[:user]
  end

  def is_user?
    true
  end
end
