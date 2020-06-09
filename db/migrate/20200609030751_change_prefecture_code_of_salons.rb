class ChangePrefectureCodeOfSalons < ActiveRecord::Migration[5.2]
  def change
  	change_column :salons, :prefecture_code, :integer, default: "0"
  end
end
