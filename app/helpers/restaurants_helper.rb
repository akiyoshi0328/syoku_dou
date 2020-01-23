module RestaurantsHelper
  def show_restaurant_image(restaurant)
    if restaurant.images.attached? 
      restaurant.images.each do |image| 
        image_tag image.variant(resize: "200x200")
      end
    else
      image_tag "no_image.png"
    end
  end

end
