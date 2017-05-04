class Api::CarbonMonoxidesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_carbon_monoxide, only: [:show, :edit, :update, :destroy]

  # GET /carbon_monoxides
  # GET /carbon_monoxides.json
  def index
    @carbon_monoxides = CarbonMonoxide.all
    render json: @carbon_monoxides
  end

  # GET /carbon_monoxides/1
  # GET /carbon_monoxides/1.json
  def show
    render json: @carbon_monoxide
  end

  # POST /carbon_monoxides
  # POST /carbon_monoxides.json
  def create
    @carbon_monoxide = CarbonMonoxide.new(carbon_monoxide_params)

      if @carbon_monoxide.save
        render json: @carbon_monoxide, status: :created, location: @carbon_monoxide
      else
        render json: @carbon_monoxide.errors, status: :unprocessable_entity
      end
  
  end

  # PATCH/PUT /carbon_monoxides/1
  # PATCH/PUT /carbon_monoxides/1.json
  def update
    
      if @carbon_monoxide.update(carbon_monoxide_params)
        render json @carbon_monoxide
      else
        render json: @carbon_monoxide.errors, status: :unprocessable_entity
      end
  end

  # DELETE /carbon_monoxides/1
  # DELETE /carbon_monoxides/1.json
  def destroy
    @carbon_monoxide.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carbon_monoxide
      @carbon_monoxide = CarbonMonoxide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carbon_monoxide_params
       params.permit(:dataMonoxide, :node_id)
    end
end
