class AddSalonDetailToSalons < ActiveRecord::Migration[5.2]
  def change
    add_column :salons, :salon_detail, :string
  end
end
