class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.string :role_type
      t.string :string

      t.timestamps
    end
  end
end
