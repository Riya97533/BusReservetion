class BusesController < ApplicationController

    before_action :require_signin, except: [:index, :show]
    before_action :require_admin, except: [:index, :show]
    
    def index
    @buses = Bus.all
    # @buses = Bus.all
end

def show 
    @bus = Bus.find(params[:id])
end
def edit 
    @bus = Bus.find(params[:id])
end

def update
    @bus = Bus.find(params[:id])
   
@bus.update(bus_params)
redirect_to @bus
end
 def new 
    @bus = Bus.new
 end
 def create
    
    @bus = Bus.new(bus_params)
    @bus.save
    redirect_to @bus
     
 end
 def destroy
    @bus = Bus.find(params[:id])
    @bus.destroy
    redirect_to buses_url
 end
 private
 def bus_params
    params.require(:bus).
    permit(:name, :source, :destination, :fare, :starts_at)
end

end
