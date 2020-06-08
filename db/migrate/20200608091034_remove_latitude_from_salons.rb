class RemoveLatitudeFromSalons < ActiveRecord::Migration[5.2]
  def change
    remove_column :salons, :latitude, :float
  end
end
