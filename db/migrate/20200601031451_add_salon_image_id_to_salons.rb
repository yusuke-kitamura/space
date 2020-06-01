class AddSalonImageIdToSalons < ActiveRecord::Migration[5.2]
  def change
    add_column :salons, :salon_image_id, :string
  end
end
