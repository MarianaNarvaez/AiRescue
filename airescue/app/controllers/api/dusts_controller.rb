class Api::DustsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_dust, only: [:show, :edit, :update, :destroy]

  # GET /dusts
  # GET /dusts.json
  def index
    @dusts = Dust.all
    render json: @dusts
  end

  # GET /dusts/1
  # GET /dusts/1.json
  def show
    render json: @dust
  end

  def create
    @dust = Dust.new(dust_params)
      if @dust.save
        render json: @dust, status: :created, location: @dust
      else
         render json: @dust.errors, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /dusts/1
  # PATCH/PUT /dusts/1.json
  def update
    
      if @dust.update(dust_params)
        render json @dust
      else
        render json: @dust.errors, status: :unprocessable_entity
      end
  end

  # DELETE /dusts/1
  # DELETE /dusts/1.json
  def destroy
    @dust.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dust
      @dust = Dust.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dust_params
      params.permit(:dataDust, :node_id)
    end
end
