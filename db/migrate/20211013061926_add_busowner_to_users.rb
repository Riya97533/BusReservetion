class AddBusownerToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :busowner, :boolean, default: false
  end
end
