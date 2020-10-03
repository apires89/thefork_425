class RestaurantsController < ApplicationController
  before_action :set_restaurant, only:[:show,:edit,:update,:destroy]
  def index
    #display all the restaurants
    @restaurants = Restaurant.all
  end

  def show
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

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    #delete the restaurant
    @restaurant.destroy
    #redirect to index
    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    #whitelist params
    params.require(:restaurant).permit(:name,:address,:rating)
  end
end
