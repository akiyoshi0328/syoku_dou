class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search
  def set_search
    @q = Restaurant.ransack(params[:q])
    @restaurants = @q.result.with_attached_images.page(params[:page])
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nick_name, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nick_name, :avatar])
  end
end
