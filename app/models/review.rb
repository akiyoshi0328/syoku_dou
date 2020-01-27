class Review < ApplicationRecord
  belongs_to :restraunt
  belongs_to :user
  enum evaluations: { one: 1, two: 2, three: 3, four: 4, five: 5 }
  mount_uploader :video, VideoUploader
  validates :evaluation, presence: true
  validates :title, presence: true, length: { maximum: 50 }
  validates :body, presence: true, length: { maximum: 500 }
  validates_uniqueness_of :restaurant_id, scope: :user_id
  validates :title, :video, :presence => true
  
end
