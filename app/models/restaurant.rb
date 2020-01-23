class Restaurant < ApplicationRecord
  belongs_to :prefecture
  belongs_to :category
  has_many_attached :images
  

end
