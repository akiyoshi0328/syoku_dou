class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  
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
    
  end
  
  def edit
    
    @prefectures = Prefecture.all
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: "店舗を更新しました。"
    else
      render :edit
    end
  end

  def destroy
    
    @restaurant.destroy
    redirect_to restaurants_path, notice: "投稿を削除しました。"
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :prefecture_id, :municipalities, :building_name, :description, :phone_number, :business_hours, :regular_horiday, :homepage, :opening_date,:category_id, images: [] )
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
