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
  #   user = User.new(user_params)

  #   if user
  #      redirect_to "/users/#{user.id}"
  #   else
      
  #   end
    render json: params
  end 

  def user_params 
    params.require(:user).permit(:username, :email, :age, :political_affliation)
  end 
end 