class Api::V1::LocationsController < ApplicationController

    def index
        @locations = Location.all
        # Better json render with relationships >>>>
        render json: @locations.to_json(include: [:adventures]), status: 200
    end

    def show
        @location = Location.find_by(id:params[:id])
        options = {
            include: [:adventures]
        }
        render json: @location.to_json(include: [:adventures]), status: 200
    end

    def create
        @location= Location.new(location_params)
        if @location.save
            render json: @location.to_json(include: [:adventures]), status: 200
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
        render json: @location.to_json(include: [:adventures]), status: 200
    end

    private

    def location_params
        params.require(:location).permit(:park, :image, :is_wishlist?, :is_done?, :lat, :long)
    end
    
end
