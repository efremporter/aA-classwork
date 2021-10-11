class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    debugger
    user = User.find_by_credentials(params[:username], params[:password])
    user.reset_session_token!
    redirect_to cats_url
  end
end