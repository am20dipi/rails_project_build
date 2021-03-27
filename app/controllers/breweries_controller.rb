class BreweriesController < ApplicationController
    before_action :find_brewery, only: [:show, :edit, :update, :destroy]

    def index
        @breweries = Brewery.all
    end

    def show
    end

    def edit
    end

    private
    def find_brewery
        @brewery = Brewery.find_by(id: params[:id])
    end
end
