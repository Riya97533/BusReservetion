class Ticket < ApplicationRecord
  belongs_to :bus
  has_many :reservations, dependent: :destroy
  def update_quantity(remaining_tickets)
    update_attribute(:quantity, remaining_tickets)
  end
end
