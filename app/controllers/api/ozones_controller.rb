class Api::OzonesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_ozone, only: [:show, :edit, :update, :destroy]

  # GET /ozones
  # GET /ozones.json
  def index
    @ozones = Ozone.all
    render json: @ozones
  end

  # GET /ozones/1
  # GET /ozones/1.json
  def show
    render json: @ozones
  end


  # POST /ozones
  # POST /ozones.json
  def create
    @ozone = Ozone.new(ozone_params)

      if @ozone.save
        render json: @ozone, status: :created, location: @ozone 
      else
        render json: @ozone.errors, status: :unprocessable_entity 
      end
  end

  # PATCH/PUT /ozones/1
  # PATCH/PUT /ozones/1.json
  def update
      if @ozone.update(ozone_params)
        
        render json @ozone
      else
      
        render json: @ozone.errors, status: :unprocessable_entity
      end
  end

  # DELETE /ozones/1
  # DELETE /ozones/1.json
  def destroy
    @ozone.destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ozone
      @ozone = Ozone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ozone_params
      params.permit(:dataOzone, :node_id)
    end
  end
