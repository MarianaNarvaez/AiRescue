class Api::CarbonDioxidesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_carbon_dioxide, only: [:show, :edit, :update, :destroy]

  # GET /carbon_dioxides
  # GET /carbon_dioxides.json
  def index
    @carbon_dioxides = CarbonDioxide.all
    render json: @carbon_dioxides
  end

  # GET /carbon_dioxides/1
  # GET /carbon_dioxides/1.json
  def show
    render json: @carbon_dioxides
  end
  
  # POST /carbon_dioxides
  # POST /carbon_dioxides.json
  def create
    @carbon_dioxide = CarbonDioxide.new(carbon_dioxide_params)

    
      if @carbon_dioxide.save
        
        render json: @carbon_dioxide, status: :created, location: @carbon_dioxide
      else
        
        render json: @carbon_dioxide.errors, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /carbon_dioxides/1
  # PATCH/PUT /carbon_dioxides/1.json
  def update
    
      if @carbon_dioxide.update(carbon_dioxide_params)
        render json @carbon_dioxide
      else
        render json: @carbon_dioxide.errors, status: :unprocessable_entity
      end
  end

  # DELETE /carbon_dioxides/1
  # DELETE /carbon_dioxides/1.json
  def destroy
    @carbon_dioxide.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carbon_dioxide
      @carbon_dioxide = CarbonDioxide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carbon_dioxide_params
      params.permit(:dataDioxide, :node_id)
    end
end
