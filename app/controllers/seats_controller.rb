class SeatsController < ApplicationController
 
    before_action :set_bus
    def index 
        @seats = @bus.seats
    end
    def new
        @seats = @bus.seats.new
    end

    def create
        @seats = @bus.seats.new(seat_params)
     
        if @seats.save
            redirect_to bus_seats_url(@bus),
            notice: "seat booked!"
        else
            render :new
        end
    end
     private
      
     def seat_params
        params.require(:seat).permit(:seat_no)
     end

     def set_bus
        @bus = Bus.find(params[:bus_id])
     end
    
    
end



 