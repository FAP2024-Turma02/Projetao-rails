class CoursesController < ApplicationController
  def index
    @courses = Course.includes(:comments => :student).all

  

    
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to courses_path(@course), notice: 'Curso criado com sucesso.'
    else
      render :new
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
      redirect_to course_path(@course), notice: 'Curso atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path, notice: 'Curso deletado com sucesso.'
  end

  private

  def course_params
    params.require(:course).permit(:name, :expiration_date)
  end
end
