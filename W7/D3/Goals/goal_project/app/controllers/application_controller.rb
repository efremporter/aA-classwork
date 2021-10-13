class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :signed_in?
  
  def signed_in?
    !!current_user
  end

  def current_user
    return nil unless session[:session_token]
    @current_user ||= user.find_by(session_token: session[:session_token])
  end

  def sign_in_user!(user)
    session[:session_token] = user.reset_session_token!
  end

  def sign_out_user!
    current_user.reset_session_token!
    session[:session_token] = nil
  end
end
