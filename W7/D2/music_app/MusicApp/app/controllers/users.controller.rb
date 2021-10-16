class UsersController < ApplicationController

  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find_by(params[:id])
    if @user
      render :show
    else
      render json: @user.errors.full_messages
    end
  end

  def new
    render :new
  end

  def create
    @user = User.new(user_params) #why do we sometimes use instance variables?
    if @user.save!
      redirect_to user_url(@user)
    else
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:username, :password) #what does :user represent here?
  end 

end