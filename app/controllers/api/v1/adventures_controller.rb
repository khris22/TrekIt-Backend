class Api::V1::AdventuresController < ApplicationController
    def index
        adventures = Adventure.all
        render json: adventures

    end

    def show

    end

    def create

    end

    # def update
    # end

    def destroy  
        adventure = Adventure.find_by(id:params[:id])
        adventure.destroy
        render json: adventure
    end

    private

    def location_params
        params.require(:adventure).permit(:location_id, :title, :memo, :image, :date, :is_wishlist?, :is_done?)
    end
end
