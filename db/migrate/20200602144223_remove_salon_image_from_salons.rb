class RemoveSalonImageFromSalons < ActiveRecord::Migration[5.2]
  def change
    remove_column :salons, :salon_image, :string
  end
end
