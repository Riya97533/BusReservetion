class BusownersController < ApplicationController

    def index
       @busowners = Busowner.all 
    end

    def show
        @busowner = Busowner.find(params[:id])
    end
end
