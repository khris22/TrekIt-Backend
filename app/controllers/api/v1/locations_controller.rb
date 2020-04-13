class Api::V1::LocationsController < ApplicationController

    def index
        @locations = Location.all
        # options = {
        #     include: [:adventures]
        # }
        # render json: LocationSerializer.new(@locations, options), status: 200
        # Better json render with relationships >>>>
        render json: @locations.to_json(include: [:adventures]), status: 200
    end

    def show
        @location = Location.find_by(id:params[:id])
        options = {
            include: [:adventures]
        }
        # render json: LocationSerializer.new(@location, options), status: 200
        render json: @location.to_json(include: [:adventures]), status: 200
    end

    def create
        # binding.pry
        @location= Location.new(location_params)
        if @location.save
            render json: @location.to_json(include: [:adventures]), status: 200
            # render json: LocationSerializer.new(@location), status: 200
            # options = {
            #     include: [:adventures]
            # }
            # render json: LocationSerializer.new(@locations, options), status: 200
        else 
            render json: {error: 'ERROR CREATING LOCATION'}
        end 
    end

    # def update
    # location = Location.find_by(id:params[:id])
    # end

    def destroy  
        @location = Location.find_by(id:params[:id])
        @location.destroy
        render json: @location
    end

    private

    def location_params
        params.require(:location).permit(:park, :image, :is_wishlist?, :is_done?, :lat, :long)
    end

    # before_action to make it DRY
    
end
