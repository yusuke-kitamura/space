class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.references :salon, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
