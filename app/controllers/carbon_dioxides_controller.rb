class CarbonDioxidesController < ApplicationController
  before_action :set_carbon_dioxide, only: [:show, :edit, :update, :destroy]

  # GET /carbon_dioxides
  # GET /carbon_dioxides.json
  def index
    @carbon_dioxides = CarbonDioxide.all
  end

  # GET /carbon_dioxides/1
  # GET /carbon_dioxides/1.json
  def show
  end

  # GET /carbon_dioxides/new
  def new
    @carbon_dioxide = CarbonDioxide.new
  end

  # GET /carbon_dioxides/1/edit
  def edit
  end

  # POST /carbon_dioxides
  # POST /carbon_dioxides.json
  def create
    @carbon_dioxide = CarbonDioxide.new(carbon_dioxide_params)

    respond_to do |format|
      if @carbon_dioxide.save
        format.html { redirect_to @carbon_dioxide, notice: 'Carbon dioxide was successfully created.' }
        format.json { render :show, status: :created, location: @carbon_dioxide }
      else
        format.html { render :new }
        format.json { render json: @carbon_dioxide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carbon_dioxides/1
  # PATCH/PUT /carbon_dioxides/1.json
  def update
    respond_to do |format|
      if @carbon_dioxide.update(carbon_dioxide_params)
        format.html { redirect_to @carbon_dioxide, notice: 'Carbon dioxide was successfully updated.' }
        format.json { render :show, status: :ok, location: @carbon_dioxide }
      else
        format.html { render :edit }
        format.json { render json: @carbon_dioxide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carbon_dioxides/1
  # DELETE /carbon_dioxides/1.json
  def destroy
    @carbon_dioxide.destroy
    respond_to do |format|
      format.html { redirect_to carbon_dioxides_url, notice: 'Carbon dioxide was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carbon_dioxide
      @carbon_dioxide = CarbonDioxide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carbon_dioxide_params
      params.require(:carbon_dioxide).permit(:dataDioxide, :node_id)
    end
end
