class BreweriesController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :find_brewery, only: [:show, :edit, :update, :destroy]
    

    def index
        @breweries = Brewery.all
    end

    def show
    end
    
    
    
    
    def new 
       @brewery = Brewery.new 
       @brewery.comments.build
    end

    

    def create 
        @brewery = current_user.breweries.build(brewery_params(:name, :location, :year_established, comments_attributes:[:content]))
        if @brewery.save
            redirect_to @brewery
        else
            render :new
        end
    end

    def edit
    end

    def update
        @brewery.update(brewery_params(:name, :location, :year_established)) 
        if @brewery.valid?
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

    def brewery_params(*args)
        params.require(:brewery).permit(*args)
    end
end
