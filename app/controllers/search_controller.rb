class SearchController < ApplicationController
    def index

    end

    def results
          @buses = Bus.where('name LIKE ?', "%#{params[:query]}%")
    end
end
