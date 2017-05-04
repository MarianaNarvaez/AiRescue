class CarbonMonoxidesController < ApplicationController
  before_action :set_carbon_monoxide, only: [:show, :edit, :update, :destroy]

  # GET /carbon_monoxides
  # GET /carbon_monoxides.json
  def index
    @carbon_monoxides = CarbonMonoxide.all
  end

  # GET /carbon_monoxides/1
  # GET /carbon_monoxides/1.json
  def show
  end

  # GET /carbon_monoxides/new
  def new
    @carbon_monoxide = CarbonMonoxide.new
  end

  # GET /carbon_monoxides/1/edit
  def edit
  end

  # POST /carbon_monoxides
  # POST /carbon_monoxides.json
  def create
    @carbon_monoxide = CarbonMonoxide.new(carbon_monoxide_params)

    respond_to do |format|
      if @carbon_monoxide.save
        format.html { redirect_to @carbon_monoxide, notice: 'Carbon monoxide was successfully created.' }
        format.json { render :show, status: :created, location: @carbon_monoxide }
      else
        format.html { render :new }
        format.json { render json: @carbon_monoxide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carbon_monoxides/1
  # PATCH/PUT /carbon_monoxides/1.json
  def update
    respond_to do |format|
      if @carbon_monoxide.update(carbon_monoxide_params)
        format.html { redirect_to @carbon_monoxide, notice: 'Carbon monoxide was successfully updated.' }
        format.json { render :show, status: :ok, location: @carbon_monoxide }
      else
        format.html { render :edit }
        format.json { render json: @carbon_monoxide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carbon_monoxides/1
  # DELETE /carbon_monoxides/1.json
  def destroy
    @carbon_monoxide.destroy
    respond_to do |format|
      format.html { redirect_to carbon_monoxides_url, notice: 'Carbon monoxide was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carbon_monoxide
      @carbon_monoxide = CarbonMonoxide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carbon_monoxide_params
      params.require(:carbon_monoxide).permit(:dataMonoxide, :node_id)
    end
end
