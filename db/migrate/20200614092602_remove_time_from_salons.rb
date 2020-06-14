class RemoveTimeFromSalons < ActiveRecord::Migration[5.2]
  def change
    remove_column :salons, :time, :integer
  end
end
