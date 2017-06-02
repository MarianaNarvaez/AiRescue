class NodesController < ApplicationController
  before_action :set_node, only: [:show, :edit, :update, :destroy]

  # GET /nodes
  # GET /nodes.json
  def index
    @nombreNodes = "Iniciar Sesion"
    @nodes = Node.all
    
  end

  # GET /nodes/1
  # GET /nodes/1.json
  def show
    @node = Node.find(params[:id])
    @dioxide = CarbonDioxide.where(node_id: params[:id]).last
    @monoxide = CarbonMonoxide.where(node_id: params[:id]).last
    @ozone = Ozone.where(node_id: params[:id]).last
    @humed = Humidity.where(node_id: params[:id]).last
    @temp = Temperature.where(node_id: params[:id]).last
    @nitrogen = Nitrogen.where(node_id: params[:id]).last
    @dus = Dust.where(node_id: params[:id]).last
    
    
  end

  # GET /nodes/new
  def new
    @nombreNodes = "Crear Nodo"
    @nombreBotones = "Guardar"
    @node = Node.new
  end

  # GET /nodes/1/edit
  def edit
    @nombreNodes = "Editar Nodo"
    @nombreBotones = "Guardar"
  end

  # POST /nodes
  # POST /nodes.json
  def create
    @node = Node.new(node_params)

    respond_to do |format|
      if @node.save
        
        format.html { redirect_to @node, notice: 'Node was successfully created.' }
        format.json { render :show, status: :created, location: @node }
      else
        format.html { render :new }
        format.json { render json: @node.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nodes/1
  # PATCH/PUT /nodes/1.json
  def update
    respond_to do |format|
      if @node.update(node_params)
        format.html { redirect_to @node, notice: 'Node was successfully updated.' }
        format.json { render :show, status: :ok, location: @node }
      else
        format.html { render :edit }
        format.json { render json: @node.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nodes/1
  # DELETE /nodes/1.json
  def destroy
    @node.destroy
    respond_to do |format|
      format.html { redirect_to nodes_url, notice: 'Node was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_node
      @node = Node.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def node_params
      params.require(:node).permit(:name, :address, :description, :data, :cover)
    end
end
