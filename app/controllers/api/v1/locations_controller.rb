class Api::V1::LocationsController < ApplicationController

    def index
        locations = Location.all
        render json: locations
        
        # .to_json(include: [:liquors]), status: 200 
    end

    def show

    end

    def create

    end

    # def update
    # end

    def destroy  
        location = Location.find_by(id:params[:id])
        location.destroy
        render json: location
    end

    private

    def location_params
        params.require(:location).permit(:park, :image, :is_wishlist?, :is_done?, :lat, :long)
    end
    
end
