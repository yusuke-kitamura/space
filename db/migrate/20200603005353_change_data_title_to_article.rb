class ChangeDataTitleToArticle < ActiveRecord::Migration[5.2]
  def change
  	change_column :salons, :time, :datetime
  end
end
