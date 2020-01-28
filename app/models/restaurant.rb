class Restaurant < ApplicationRecord
  belongs_to :prefecture
  belongs_to :category
  has_many :reviews, dependent: :destroy 
  has_many_attached :images

  
  validates :name, presence: true, length: { maximum: 50 }
  validates :municipalities, presence: true
  validates :description, presence: true, length: { maximum: 1000 }


  
  

end
