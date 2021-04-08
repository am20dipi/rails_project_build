class BeersController < ApplicationController
    before_action :find_beer, only: [:show, :edit, :update, :destroy]
  

    def new 
       @beer = Beer.new 
    end

    def show
    end

    def create 
        @beer = Beer.create(beer_params)
        if @beer.save
            redirect_to @brewery
        else
            render :new
        end
    end

    def edit
    end

    def update
        @beer.update(beer_params) 
        if @beer.save
            redirect_to @brewery
        else
            render :edit
        end
    end

    def destroy
        @beer.destroy
        redirect_to @brewery, :notice => "Successfully deleted."
    end

    private
    def find_beer
        @beer = Beer.find_by(id: params[:id])
    end

    def beer_params
        params.require(:beer).permit(:name, :type, :abv, :description)
    end
end
