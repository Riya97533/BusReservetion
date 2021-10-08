class ReservationsController < ApplicationController
# before_action :authenticate_user!

    def create
        # @reservation = Reservation.create(reservation_params)

        # # @reservation = current_user.reservations.create(reservation_params)

        # redirect_to @reservation.bus, notice: "Your reservation has been created"
        @reservation = Reservation.new(reservation_params)
        @reservation.save
        redirect_to @reservation.bus, notice: "Your ticket has been booked"
    end

    def your_reservations
        
        
    end
   
    private
    def reservation_params
        params.require(:reservation).permit(:start_date, :end_date, :price, :total, :bus_id)
    end
end