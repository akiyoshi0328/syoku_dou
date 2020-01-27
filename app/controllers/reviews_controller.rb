class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:show, :new, :create, :edit]
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.attributes = {restaurant_id: params[:restaurant_id],user_id: current_user.id}
    if @review.save
      redirect_to @review.restaurant, notice: "レビューを登録しました。"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to @review.restaurant, notice: "レビューを更新しました。"
    else
      render :edit
    end

    respond_to do |format|
      if @review.update(review_params) && @review.video.recreate_versions!
      format.html { redirect_to @review, notice: 'Review was successfully updated.' }
      format.json { head :no_content }
      else
      format.html { render action: 'edit' }
      format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
    
  end

  def destroy
    @review.destroy
    redirect_to @review.restaurant, notice: "レビューを削除しました。"
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :evaluation)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
  
  def set_review
    @review = Review.find(params[:id])
  end
end