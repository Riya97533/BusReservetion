class TicketsController < ApplicationController
    
  def index
    @bus = Bus.find(params[:bus_id])
    @tickets = @bus.tickets
  end 
  
  def new
    @bus = Bus.find(params[:bus_id])
    @ticket = @bus.tickets.new

  end
        
  def create
    @bus = Bus.find(params[:bus_id])
    @ticket = @bus.tickets.new(ticket_params)

    if @ticket.save
      redirect_to bus_tickets_url(@bus),
      notice: "Thanks for registering!"
    else
      render :new
    end
  end
  private
   def ticket_params
    params.require(:ticket).permit(:ticket_type)
   end
   
 end
    
