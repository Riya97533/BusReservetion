class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :ticket_type
      t.integer :quantity
      t.references :bus, null: false, foreign_key: true

      t.timestamps
    end
  end
end
