class Api::V1::AdventuresController < ApplicationController
    
    before_action :set_location, only: [:index, :show]

    def index
        # @adventures = Adventure.all
        @adventures = @location.adventures
        # options = {
        #     include: [:location]
        # }
        # render json:  AdventureSerializer.new(@adventures, options), status: 200
        # Better json render with relationships >>>>
        render json: @adventures.to_json(include: [:location]), status: 200 
    end

    def show
        # @adventure = Adventure.find_by(id:params[:id])
        @adventure = @location.adventures.find_by(id:params[:id])
        # options = {
        #     include: [:location]
        # }
        # render json:  AdventureSerializer.new(@adventure, options), status: 200
        render json: @adventure.to_json(include: [:location]), status: 200 
    end

    def create
        # binding pry
        @location = Location.find(params[:location_id])
        @adventure = @location.adventures.build(adventure_params)
        # @adventure = @location.adventures.new(adventure_params)
        # binding pry
        if @adventure.save
            render json: @location.to_json(include: [:adventures]), status: 200

            # render json: @adventure.to_json(include: [:location]), status: 200 
            # render json:  AdventureSerializer.new(@adventure), status: 200
            # options = {
            #     include: [:location]
            # }
            # render json:  AdventureSerializer.new(@adventure, options), status: 200
        else
            render json: {error: 'UNABLE TO SAVE ADVENTURE'}
        end
    end

    def update
        # binding.pry
        @adventure = Adventure.find_by(id:params[:id])
        @location = Location.find(@adventure.location_id)
        @adventure.update(adventure_params)
        render json: @location.to_json(include: [:adventures]), status: 200
    end

    def destroy 
        # binding.pry 
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
