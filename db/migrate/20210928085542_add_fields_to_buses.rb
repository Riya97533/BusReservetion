class AddFieldsToBuses < ActiveRecord::Migration[6.1]
  def change
    add_column :buses, :quantity, :integer
  end
end
