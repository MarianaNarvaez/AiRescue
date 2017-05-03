class CarbonsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_carbon, only: [:show, :edit, :update, :destroy]

  # GET /carbons
  # GET /carbons.json
  def index
    @carbons = Carbon.all
    render json: @carbons
  end

  # GET /carbons/1
  # GET /carbons/1.json
  def show
    render json: @carbon
  end
  
  # POST /carbons
  # POST /carbons.json
  def create
    @carbon = Carbon.new(carbon_params)

      if @carbon.save
        render json: @carbon, status: :created, location: @carbon
      else
        render json: @carbon.errors, status: :unprocessable_entity 
      end
  end

  # PATCH/PUT /carbons/1
  # PATCH/PUT /carbons/1.json
  def update
    
      if @carbon.update(carbon_params)
        render json: @carbon 
      else
        render json: @carbon.errors, status: :unprocessable_entity
      end
  end

  # DELETE /carbons/1
  # DELETE /carbons/1.json
  def destroy
    @carbon.destroy
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carbon
      @carbon = Carbon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carbon_params
      params.require(:carbon).permit(:dataCarbon, :node_id)
    end
end
