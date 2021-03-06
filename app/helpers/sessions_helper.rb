module SessionsHelper

  def current_user
    session[:user_id] ? User.find(session[:user_id]) : nil
  end

  def is_logged_in?
  current_user != nil
  end

end
