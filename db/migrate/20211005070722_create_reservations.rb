class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :bus, null: false, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.decimal :price
      t.decimal :total

      t.timestamps
    end
  end
end
