class SessionsController < ApplicationController
  def new
    # Renderiza o formulário de login
  end

  def create
    student = Student.find_by(name: params[:name])
    if student
      session[:student_id] = student.id
      redirect_to root_path, notice: 'Login bem-sucedido!'
    else
      flash.now[:alert] = 'Nome de estudante não encontrado'
      render :new
    end
  end

  def destroy
    session[:student_id] = nil
    redirect_to root_path, notice: 'Logout bem-sucedido!'
  end
end
