class DustsController < ApplicationController
  before_action :set_dust, only: [:show, :edit, :update, :destroy]

  # GET /dusts
  # GET /dusts.json
  def index
    @dusts = Dust.all
  end

  # GET /dusts/1
  # GET /dusts/1.json
  def show
  end

  # GET /dusts/new
  def new
    @dust = Dust.new
  end

  # GET /dusts/1/edit
  def edit
  end

  # POST /dusts
  # POST /dusts.json
  def create
    @dust = Dust.new(dust_params)

    respond_to do |format|
      if @dust.save
        format.html { redirect_to @dust, notice: 'Dust was successfully created.' }
        format.json { render :show, status: :created, location: @dust }
      else
        format.html { render :new }
        format.json { render json: @dust.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dusts/1
  # PATCH/PUT /dusts/1.json
  def update
    respond_to do |format|
      if @dust.update(dust_params)
        format.html { redirect_to @dust, notice: 'Dust was successfully updated.' }
        format.json { render :show, status: :ok, location: @dust }
      else
        format.html { render :edit }
        format.json { render json: @dust.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dusts/1
  # DELETE /dusts/1.json
  def destroy
    @dust.destroy
    respond_to do |format|
      format.html { redirect_to dusts_url, notice: 'Dust was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dust
      @dust = Dust.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dust_params
      params.require(:dust).permit(:dataDust, :node_id)
    end
end
