class RestaurantsController < ApplicationController
  def show
    @restaurant = Restaurant.find(params[:id])
    
  end

  def index
    @restaurant = Restaurant.all
  end

  def new
@restaurant = Restaurant.new
  end

  def create
    restaurant = Restaurant.new(restaurant_p)
     restaurant.save
    redirect_to restaurant_path(restaurant.id)
  end
private
  def restaurant_p
    params.require(:restaurant).permit(:name ,:address)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
