class MakeRegistrationAJoinTable < ActiveRecord::Migration[6.1]
  def change
  add_column :reservations, :ticket_id, :integer
  Reservation.delete_all
  
  
  end
end
