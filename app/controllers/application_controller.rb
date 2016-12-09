class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def logged_in?
    !@current_user.nil?
  end

  def login_in!(user)
    session[:session_token] = user.session_token
  end

  def log_out
    return nil if current_user.nil?
    current_user.reset_session_token!
  end
end
