class CatsController < ApplicationController
  def index
    cats = Cats.all
    render :index 
  end

  def show
    cat = Cat.find(params[:id])
    render :show              #logic if they dont find
  end

  def new
    @cats = Cat.new
    render :new 
  end

  def edit
  
  end 

  def update
  
  end

  def cat_params
    params.require(:cat).permit(:birth_date, :color, :name, :sex, :description)
  end

end
