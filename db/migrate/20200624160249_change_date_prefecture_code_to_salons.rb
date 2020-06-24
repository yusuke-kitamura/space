class ChangeDatePrefectureCodeToSalons < ActiveRecord::Migration[5.2]
  def change
  	change_column :salons, :prefecture_code, :integer, null: true, default: nil
  end
end
