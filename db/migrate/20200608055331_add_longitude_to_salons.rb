class AddLongitudeToSalons < ActiveRecord::Migration[5.2]
  def change
    add_column :salons, :longitude, :float
  end
end
