class Restaurant < ApplicationRecord
  belongs_to :prefecture
  has_many_attached :images

end
