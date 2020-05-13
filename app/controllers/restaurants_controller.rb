class RestaurantsController < ApplicationController
  # before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurant = Restaurant.all
  end


  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end


    #   redirect_to @restaurants, notice: 'Restaurant was successfully created'
    # else
    #   render :new
    # end
