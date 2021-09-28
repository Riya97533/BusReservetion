class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :quantity
      t.boolean :paid
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
