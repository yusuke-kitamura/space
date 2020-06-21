class AddColumnsToOwners < ActiveRecord::Migration[5.2]
  def change
  	add_column :owners, :confirmation_token, :string
    add_column :owners, :confirmed_at, :datetime
    add_column :owners, :confirmation_sent_at, :datetime
    add_column :owners, :unconfirmed_email, :string
  end
end
