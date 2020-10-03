class RestaurantsController < ApplicationController
  def index
    #display all the restaurants
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    #return to show page
    redirect_to restaurant_path(@restaurant)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name,:address,:rating)
  end
end
