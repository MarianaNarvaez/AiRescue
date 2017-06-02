class Api::NitrogensController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_nitrogen, only: [:show, :edit, :update, :destroy]

  # GET /nitrogens
  # GET /nitrogens.json
  def index
    @nitrogens = Nitrogen.all
    render json: @nitrogens
  end

  # GET /nitrogens/1
  # GET /nitrogens/1.json
  def show
     render json: @nitrogens
  end

  # POST /nitrogens
  # POST /nitrogens.json
  def create
    @nitrogen = Nitrogen.new(nitrogen_params)

   
      if @nitrogen.save
        render json:  @nitrogen, status: :created, location: @nitrogen
      else
        render json: @nitrogen.errors, status: :unprocessable_entity 
      end
  end

  # PATCH/PUT /nitrogens/1
  # PATCH/PUT /nitrogens/1.json
  def update
      if @nitrogen.update(nitrogen_params)
         render json @nitrogen
      else
        render json: @nitrogen.errors, status: :unprocessable_entity
      end
  end

  # DELETE /nitrogens/1
  # DELETE /nitrogens/1.json
  def destroy
    @nitrogen.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nitrogen
      @nitrogen = Nitrogen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nitrogen_params
      params.permit(:dataNitrogen, :node_id)
    end
end
