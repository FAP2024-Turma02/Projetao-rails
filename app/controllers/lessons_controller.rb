class LessonsController < ApplicationController
  def new
    @lesson = Lesson.new
    @modules = Module.all
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to lesson_path(@lesson), notice: 'Aula criada com sucesso.'
    else
      render :new
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      redirect_to lesson_path(@lesson), notice: 'Aula atualizada com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to lessons_path, notice: 'Aula deletada com sucesso.'
  end

  private

  def lesson_params
    params.require(:lesson).permit(:title, :content, :module_id)
  end
end
