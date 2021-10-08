class CreateSeatsConfigurations < ActiveRecord::Migration[6.1]
  def change
    create_table :seats_configurations do |t|
      t.integer :area, :default => 20
      t.integer :height, :default => 10
      t.integer :width, :default => 10
      t.references :bus, index: true, foreign_key: true

      t.timestamps  null: false
    end
  end
end
