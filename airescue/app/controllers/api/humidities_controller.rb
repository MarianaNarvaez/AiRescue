class Api::HumiditiesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_humidity, only: [:show, :edit, :update, :destroy]

  # GET /humidities
  # GET /humidities.json
  def index
    @humidities = Humidity.all
    render json: @humidities
  end

  # GET /humidities/1
  # GET /humidities/1.json
  def show
    render json: @humidities
  end

  # POST /humidities
  # POST /humidities.json
  def create
    @humidity = Humidity.new(humidity_params)

      if @humidity.save
        render json: @humidity, status: :created, location: @humidity
      else
        render json: @humidity.errors, status: :unprocessable_entity 
      end
  end

  # PATCH/PUT /humidities/1
  # PATCH/PUT /humidities/1.json
  def update
      if @humidity.update(humidity_params)
        
        render json @humidity
      else
        render json: @humidity.errors, status: :unprocessable_entity 
      end
  end

  # DELETE /humidities/1
  # DELETE /humidities/1.json
  def destroy
    @humidity.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_humidity
      @humidity = Humidity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def humidity_params
      params.permit(:dataHumidity, :node_id)
    end
end
