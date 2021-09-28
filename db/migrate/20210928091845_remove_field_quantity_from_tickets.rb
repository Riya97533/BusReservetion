class RemoveFieldQuantityFromTickets < ActiveRecord::Migration[6.1]
  def change
    remove_column :tickets, :quantity, :integer
  end
end
