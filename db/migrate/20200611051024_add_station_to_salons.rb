class AddStationToSalons < ActiveRecord::Migration[5.2]
  def change
    add_column :salons, :station, :string
  end
end
