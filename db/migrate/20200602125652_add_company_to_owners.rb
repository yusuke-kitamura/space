class AddCompanyToOwners < ActiveRecord::Migration[5.2]
  def change
    add_column :owners, :company, :string
  end
end
