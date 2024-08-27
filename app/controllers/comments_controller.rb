class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @students = Student.all
    
    
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to root_path, notice: 'Comentário criado com sucesso.'
    else
      render :new
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to root_path, notice: 'Comentário atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to root_path, notice: 'Comentário deletado com sucesso.'
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :commentable_id, :commentable_type, :student_id)
  end
end
