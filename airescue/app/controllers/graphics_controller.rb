class GraphicsController < ApplicationController
    def index
        @temperatures = Temperature.all
    end
    def show
        @nombre = Node.find_by(id: params[:id]).name
        @temp = Temperature.where(node_id: params[:id])
        @dioxide = CarbonDioxide.where(node_id: params[:id])
        @monoxide = CarbonMonoxide.where(node_id: params[:id])
        @ozone = Ozone.where(node_id: params[:id])
        @humed = Humidity.where(node_id: params[:id])
        
        @variables = ['dateTemperature', 'dataDioxide', 'dataMonoxide', 'dataOzone', 'dataHumidity']
        for i in(0..9)
        puts @variables[i]
        end
    end
end
