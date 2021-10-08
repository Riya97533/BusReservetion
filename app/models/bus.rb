class Bus < ApplicationRecord
    has_many :tickets, dependent: :destroy
    has_many :reservations

    

end
