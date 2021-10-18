class Bus < ApplicationRecord
    has_many :tickets, dependent: :destroy
    has_many :reservations
    has_many :seats, dependent: :destroy

    # def free?
    #     seat_no.reserved? || seat_no.notreaerved?
    # end

    # def booked?
    #     (seat_no - seats.size).notreaerved?
    # end
end
