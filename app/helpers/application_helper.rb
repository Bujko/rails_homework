module ApplicationHelper
  def logged_in?
    #session[:user]
    true
  end

  def is_user?
    true
  end
end
