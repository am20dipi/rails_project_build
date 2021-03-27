class BreweriesController < ApplicationController
    before_action :find_brewery, only: [:show, :edit, :update, :destroy]

    def index
        @breweries = Brewery.all
    end

    def new 
       @brewery = Brewery.new 
    end

    def show
        redirect_to '/' if !@brewery
    end

    def edit
    end

    def create 
        @brewery = Brewery.create(brewery_params)
        if @brewery.valid
            @brewery.save
            redirect_to @brewery
        else
            render :new
        end
    end

    private
    def find_brewery
        @brewery = Brewery.find_by(id: params[:id])
    end

    def brewery_params
        params.require(:brewery).permit(:name, :location, :year_established)
    end
end
