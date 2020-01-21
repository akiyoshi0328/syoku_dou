class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to @restaurant, notice: "店舗の登録をしました！"
  end

  private

  def restaurant_params
    params.reqire(:restaurant).permit(:name, :prefecture, :municipalities, :building_name, :description, :phone_number, :business_hours, :regular_horiday, :homepage, :opening_date)
  end

end
