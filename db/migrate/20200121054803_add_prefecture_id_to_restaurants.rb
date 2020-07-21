class AddPrefectureIdToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_reference :restaurants, :prefecture, foreign_key: true, index: true, after: :caption
  end
end
