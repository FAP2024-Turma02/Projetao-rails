class ModulesController < ApplicationController
  before_action :set_module, only: %i[ show update destroy ]

  # GET /modules
  def index
    @modules = Module.all

    render json: @modules
  end

  # GET /modules/1
  def show
    render json: @module
  end

  # POST /modules
  def create
    @module = Module.new(module_params)

    if @module.save
      render json: @module, status: :created, location: @module
    else
      render json: @module.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /modules/1
  def update
    if @module.update(module_params)
      render json: @module
    else
      render json: @module.errors, status: :unprocessable_entity
    end
  end

  # DELETE /modules/1
  def destroy
    @module.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_module
      @module = Module.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def module_params
      params.require(:module).permit(:name)
    end
end
