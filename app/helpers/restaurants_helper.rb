module RestaurantsHelper
  def show_restaurant_images(restaurant)
    if restaurant.images.attached? 
      restaurant.images.each do |image| 
        image_tag image.variant(resize: "200x200")
      end
    else
      image_tag "no_image.png"
    end
  end
  def show_restaurant_small_image(restaurant)
    # if restaurant&.images&.attached?
    #   image_tag restaurant.image.variant(resize: "50x50"), class: "img-thumbnail"
    # else
    #   image_tag "no_image.png", class: "img-thumbnail", width: 50
    # end
  end

end
