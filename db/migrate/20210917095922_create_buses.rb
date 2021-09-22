class CreateBuses < ActiveRecord::Migration[6.1]
  def change
    create_table :buses do |t|
      t.string :name
      t.string :source
      t.string :destination
      t.decimal :fare

      t.timestamps
    end
  end
end
