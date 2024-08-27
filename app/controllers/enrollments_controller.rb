class EnrollmentsController < ApplicationController
  def new
    @enrollment = Enrollment.new
    @students = Student.all
    @courses = Course.all
  end

  def create
    @enrollment = Enrollment.new(enrollment_params)
    if @enrollment.save
      redirect_to enrollment_path(@enrollment), notice: 'Matricula criada com sucesso.'
    else
      render :new
    end
  end

  def show
    @enrollment = Enrollment.find(params[:id])
  end

  def edit
    @enrollment = Enrollment.find(params[:id])
  end

  def update
    @enrollment = Enrollment.find(params[:id])
    if @enrollment.update(enrollment_params)
      redirect_to enrollment_path(@enrollment), notice: 'Matricula atualizada com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @enrollment = Enrollment.find(params[:id])
    @enrollment.destroy
    redirect_to enrollments_path, notice: 'Matricula deletada com sucesso.'
  end

  private

  def enrollment_params
    params.require(:enrollment).permit(:student_id, :course_id)
  end
end
