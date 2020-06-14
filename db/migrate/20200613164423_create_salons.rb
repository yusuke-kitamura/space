class CreateSalons < ActiveRecord::Migration[5.2]
  def change
    create_table :salons do |t|

      t.string :salon_name, null: false
      t.string :salon_image_id, null: false
      t.text :explanation, null: false
      t.string :postal_code, null: false
      t.string :address, null: false
      t.integer :seat_number, null: false
      t.integer :price, null: false
      t.integer :time, null: false
      t.integer :prefecture_code, null: false
      t.string :station, null: false

      t.timestamps
    end
  end
end
