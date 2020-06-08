class RemoveLongitudeFromSalons < ActiveRecord::Migration[5.2]
  def change
    remove_column :salons, :longitude, :float
  end
end
