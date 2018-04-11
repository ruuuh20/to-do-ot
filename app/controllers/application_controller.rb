class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  # to use in views

  def current_user
  @current_user ||=  User.find(session[:user_id]) if session[:user_id] #if nil it will give error
  end

  def authentication_required
    if !logged_in?
      redirect_to login_path
    end
  end

  def logged_in?
    !!current_user
  end


end
