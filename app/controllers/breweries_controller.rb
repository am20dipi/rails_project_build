class BreweriesController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :find_brewery, only: [:show, :edit, :update, :destroy]

    def index
        @breweries = Brewery.all
    end

    def new 
       @brewery = Brewery.new 
    end

    def show
        redirect_to '/breweries' if !@brewery
    end

    def create 
        @brewery = current_user.breweries.build(brewery_params)
        if @brewery.save
            redirect_to @brewery
        else
            render :new
        end
    end

    def edit
    end

    def update
        @brewery.update(brewery_params) 
        if @brewery.save
            redirect_to @brewery
        else
            render :edit
        end
    end

    def destroy
        @brewery.destroy
        redirect_to '/breweries', :notice => "Successfully deleted."
    end

    private
    def find_brewery
        @brewery = Brewery.find_by(id: params[:id])
    end

    def brewery_params
        params.require(:brewery).permit(:name, :location, :year_established)
    end
end
