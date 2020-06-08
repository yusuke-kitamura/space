class AddLatitudeToSalons < ActiveRecord::Migration[5.2]
  def change
    add_column :salons, :latitude, :float
  end
end
