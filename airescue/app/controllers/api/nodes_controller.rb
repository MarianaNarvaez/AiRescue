class Api::NodesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_node, only: [:show, :edit, :update, :destroy]

  # GET /nodes
  # GET /nodes.json
  def index
    @nodes = Node.all
    render json: @nodes
  end

  # GET /nodes/1
  # GET /nodes/1.json
  def show
    render json: @node
  end

  # POST /nodes
  # POST /nodes.json
  def create
    @node = Node.new(node_params)

    
    if @node.save
     render json: @node, status: :created, location: @node 
    else
      render json: @node.errors, status: :unprocessable_entity 
    end
  end

  # PATCH/PUT /nodes/1
  # PATCH/PUT /nodes/1.json
  def update
      if @node.update(node_params)
        render json: @node
      else
         render json: @node.errors, status: :unprocessable_entity
      end
  end

  # DELETE /nodes/1
  # DELETE /nodes/1.json
  def destroy
    @node.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_node
      @node = Node.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def node_params
      params.require(:node).permit(:name, :address, :description, :data)
    end
end
