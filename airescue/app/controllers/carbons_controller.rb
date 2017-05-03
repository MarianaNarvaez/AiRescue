class CarbonsController < ApplicationController
  before_action :set_carbon, only: [:show, :edit, :update, :destroy]

  # GET /carbons
  # GET /carbons.json
  def index
    @carbons = Carbon.all
  end

  # GET /carbons/1
  # GET /carbons/1.json
  def show
  end

  # GET /carbons/new
  def new
    @carbon = Carbon.new
  end

  # GET /carbons/1/edit
  def edit
  end

  # POST /carbons
  # POST /carbons.json
  def create
    @carbon = Carbon.new(carbon_params)

    respond_to do |format|
      if @carbon.save
        format.html { redirect_to @carbon, notice: 'Carbon was successfully created.' }
        format.json { render :show, status: :created, location: @carbon }
      else
        format.html { render :new }
        format.json { render json: @carbon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carbons/1
  # PATCH/PUT /carbons/1.json
  def update
    respond_to do |format|
      if @carbon.update(carbon_params)
        format.html { redirect_to @carbon, notice: 'Carbon was successfully updated.' }
        format.json { render :show, status: :ok, location: @carbon }
      else
        format.html { render :edit }
        format.json { render json: @carbon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carbons/1
  # DELETE /carbons/1.json
  def destroy
    @carbon.destroy
    respond_to do |format|
      format.html { redirect_to carbons_url, notice: 'Carbon was successfully destroyed.' }
      format.json { head :no_content }
    end
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
