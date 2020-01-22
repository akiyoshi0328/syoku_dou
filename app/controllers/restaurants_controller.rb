class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
    @prefectures = Prefecture.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to @restaurant, notice: "店舗の登録をしました！"
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
  
  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaraunt_params)
      redirect_to @restaurant, notice: "店舗を更新しました。"
    else
      render :edit
    end
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :prefecture_id, :municipalities, :building_name, :description, :phone_number, :business_hours, :regular_horiday, :homepage, :opening_date, images: [] )
  end

end
