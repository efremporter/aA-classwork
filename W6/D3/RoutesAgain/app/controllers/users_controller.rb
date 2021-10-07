class UsersController < ApplicationController

  def index 
    # render plain: "I'm in the index action!" 
    users = User.all 
    render json: users
  end

  def show 
    # user = User.find(params[:id])
    # render json: 'this is a test' 
    render json: params
  end
  
  def create
    debugger
    user = User.new(params.require(:user).permit(:name, :email))

    if user.save  
      render json: user
    else
      render json: user.errors.full_messages 
    end 
  end

  def user_params 
    params.require(:user).permit(:name, :email) 
  end 

  

end 