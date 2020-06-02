class CreateSalons < ActiveRecord::Migration[5.2]
  def change
    create_table :salons do |t|
      t.string :salon_name
      t.string :salon_image
      t.text :explanation
      t.string :postal_code
      t.string :address
      t.integer :seat_number
      t.integer :price
      t.integer :time

      t.timestamps
    end
  end
end
