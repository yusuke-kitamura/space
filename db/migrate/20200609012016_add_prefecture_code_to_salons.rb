class AddPrefectureCodeToSalons < ActiveRecord::Migration[5.2]
  def change
    add_column :salons, :prefecture_code, :integer
  end
end
