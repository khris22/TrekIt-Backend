class Api::V1::AdventuresController < ApplicationController
    
    before_action :set_location, only: [:index, :show]

    def index
        @adventures = @location.adventures
        render json: @adventures.to_json(include: [:location]), status: 200 
    end

    def show
        @adventure = @location.adventures.find_by(id:params[:id])
        render json: @adventure.to_json(include: [:location]), status: 200 
    end

    def create
        @location = Location.find(params[:location_id])
        @adventure = @location.adventures.build(adventure_params)
        if @adventure.save
            render json: @location.to_json(include: [:adventures]), status: 200
        else
            render json: {error: 'UNABLE TO SAVE ADVENTURE'}
        end
    end

    def update
        @adventure = Adventure.find_by(id:params[:id])
        @location = Location.find(@adventure.location_id)
        @adventure.update(adventure_params)
        render json: @location.to_json(include: [:adventures]), status: 200
    end

    def destroy 
        @adventure = Adventure.find_by(id:params[:id])
        @location = Location.find(@adventure.location_id)
        @adventure.destroy
        render json: @location.to_json(include: [:adventures]), status: 200
    end

    private

    def set_location
        @location = Location.find(params[:location_id])
    end

    def adventure_params
        params.require(:adventure).permit(:location_id, :title, :memo, :image, :date, :is_wishlist?, :is_done?)
    end
end
