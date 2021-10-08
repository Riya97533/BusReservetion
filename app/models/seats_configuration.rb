class SeatsConfiguration < ApplicationRecord
  belongs_to :bus

  has_many :seats

  def seat?(x, y)
    !self.seats.where(:x => x, :y => y).empty?
  end

  def seat_reserved?(x, y, time)
    seat = self.seats.where(:x => x, :y => y)
    seat.first.reserved?(time)
  end

end
