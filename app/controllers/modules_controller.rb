class ModulesController < ApplicationController
  def new
    @module = Module.new
    @courses = Course.all
  end

  def create
    @module = Module.new(module_params)
    if @module.save
      redirect_to module_path(@module), notice: 'Módulo criado com sucesso.'
    else
      render :new
    end
  end

  def show
    @module = Module.find(params[:id])
  end

  def edit
    @module = Module.find(params[:id])
  end

  def update
    @module = Module.find(params[:id])
    if @module.update(module_params)
      redirect_to module_path(@module), notice: 'Módulo atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @module = Module.find(params[:id])
    @module.destroy
    redirect_to modules_path, notice: 'Módulo deletado com sucesso.'
  end

  private

  def module_params
    params.require(:module).permit(:name, :course_id)
  end
end
