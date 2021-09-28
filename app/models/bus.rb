class Bus < ApplicationRecord
    has_many :tickets, dependent: :destroy

    

end
