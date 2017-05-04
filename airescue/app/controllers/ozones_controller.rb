class OzonesController < ApplicationController
  before_action :set_ozone, only: [:show, :edit, :update, :destroy]

  # GET /ozones
  # GET /ozones.json
  def index
    @ozones = Ozone.all
  end

  # GET /ozones/1
  # GET /ozones/1.json
  def show
  end

  # GET /ozones/new
  def new
    @ozone = Ozone.new
  end

  # GET /ozones/1/edit
  def edit
  end

  # POST /ozones
  # POST /ozones.json
  def create
    @ozone = Ozone.new(ozone_params)

    respond_to do |format|
      if @ozone.save
        format.html { redirect_to @ozone, notice: 'Ozone was successfully created.' }
        format.json { render :show, status: :created, location: @ozone }
      else
        format.html { render :new }
        format.json { render json: @ozone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ozones/1
  # PATCH/PUT /ozones/1.json
  def update
    respond_to do |format|
      if @ozone.update(ozone_params)
        format.html { redirect_to @ozone, notice: 'Ozone was successfully updated.' }
        format.json { render :show, status: :ok, location: @ozone }
      else
        format.html { render :edit }
        format.json { render json: @ozone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ozones/1
  # DELETE /ozones/1.json
  def destroy
    @ozone.destroy
    respond_to do |format|
      format.html { redirect_to ozones_url, notice: 'Ozone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ozone
      @ozone = Ozone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ozone_params
      params.require(:ozone).permit(:dataOzone, :node_id)
    end
end
