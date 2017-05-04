class Api::TemperaturesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_temperature, only: [:show, :edit, :update, :destroy]

  # GET /temperatures
  # GET /temperatures.json
  def index
    @temperatures = Temperature.all
    render json: @temperatures
  end

  # GET /temperatures/1
  # GET /temperatures/1.json
  def show
    render json: @temperature
  end

  # POST /temperatures
  # POST /temperatures.json
  def create
    @temperature = Temperature.new(temperature_params)

      if @temperature.save 
        render json: @temperature, status: :created, location: @temperature
      else
        render json: @temperature.errors, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /temperatures/1
  # PATCH/PUT /temperatures/1.json
  def update
      if @temperature.update(temperature_params)
        render json @temperature
      else
        render json: @temperature.errors, status: :unprocessable_entity
      end
  end

  # DELETE /temperatures/1
  # DELETE /temperatures/1.json
  def destroy
    @temperature.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temperature
      @temperature = Temperature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def temperature_params
      params.permit(:dateTemperature, :node_id)
    end
end
