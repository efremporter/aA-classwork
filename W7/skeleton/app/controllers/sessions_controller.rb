class SessionsController < ApplicationController

  def new
    render :new
  end

  def create
    user = User.find_by_credentials(params[:user_name], params[:password])
    user.reset_session_token!
    redirect_to cats_url
  end
end