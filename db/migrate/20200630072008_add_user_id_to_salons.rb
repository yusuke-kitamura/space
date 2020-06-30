class AddUserIdToSalons < ActiveRecord::Migration[5.2]
  def change
    add_column :salons, :user_id, :integer
  end
end
