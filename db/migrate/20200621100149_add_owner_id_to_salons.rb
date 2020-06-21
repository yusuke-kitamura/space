class AddOwnerIdToSalons < ActiveRecord::Migration[5.2]
  def change
    add_column :salons, :owner_id, :integer
  end
end
