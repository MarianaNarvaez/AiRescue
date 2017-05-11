class GraphicsController < ApplicationController
    def index
        @temperatures = Temperature.all
    end
    def show
        puts @temp = Temperature.where(node_id: params[:id])
        @dioxide = CarbonDioxide.where(node_id: params[:id])
        @monoxide = CarbonMonoxide.where(node_id: params[:id])
        @ozone = Ozone.where(node_id: params[:id])
        @humed = Humidity.where(node_id: params[:id])
    end
end
