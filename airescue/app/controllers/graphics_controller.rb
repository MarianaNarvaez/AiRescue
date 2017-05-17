class GraphicsController < ApplicationController
    def show
        @nombre = Node.find_by(id: params[:id]).name
        @temp = Temperature.where(node_id: params[:id])
        @dioxide = CarbonDioxide.where(node_id: params[:id])
        @monoxide = CarbonMonoxide.where(node_id: params[:id])
        @ozone = Ozone.where(node_id: params[:id])
        @humed = Humidity.where(node_id: params[:id])
    end
    def showDay
       # @nombre = Node.find_by(id: params[:id]).name
        @temp = Temperature.where(node_id: params[:id])
        @dioxide = CarbonDioxide.where(node_id: params[:id])
        @monoxide = CarbonMonoxide.where(node_id: params[:id])
        @ozone = Ozone.where(node_id: params[:id])
        @humed = Humidity.where(node_id: params[:id])
    end
end
