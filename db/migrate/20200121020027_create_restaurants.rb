class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false, length: 50
      t.string :prefecture, null: false, length: 10
      t.string :municipalities, null: false, length: 100
      t.string :building_name,length: 100
      t.text :description, length: 1000
      t.string :phone_number, length: 50
      t.text :business_hours, length: 1000
      t.string :regular_horiday
      t.string :homepage
      t.date :opening_date

      


      t.timestamps
    end
  end
end
