class SeatsController < ApplicationController
    #  before_action :set_seat, only: [:show, :edit, :update, :destroy]
def index
    @seats = Seat.all
end
  
    def show
             @seat = Seat.find(params[:id])

  end
  def edit
    @seat = Seat.find(params[:id])

  end
  def update
    @seat = Seat.find(params[:id])
    seat_params =
    params.require(:seat).
    permit(:x, :y, :reserved)
@seat.update(seat_params)
redirect_to seat_path @seat
  end
  
  def new
    @seat = Seat.new
      
  end
  def create
    
    @seat = Seat.new(seat_params)
    @seat.save
    redirect_to @seat
      
  end

  private
#   def set_seat
#     @seat = Seat.find(params[:id])
#   end

  def seat_params
    params.require(:seat).permit(:x, :y, :reserved, :configuration_id)
  end
end
