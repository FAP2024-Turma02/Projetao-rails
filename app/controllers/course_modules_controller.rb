class CourseModulesController < ApplicationController
  before_action :set_course_module, only: %i[ show update destroy ]

  # GET /course_modules
  def index
    @course_modules = CourseModule.all

    render json: @course_modules
  end

  # GET /course_modules/1
  def show
    render json: @course_module
  end

  # POST /course_modules
  def create
    @course_module = CourseModule.new(course_module_params)

    if @course_module.save
      render json: @course_module, status: :created, location: @course_module
    else
      render json: @course_module.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /course_modules/1
  def update
    if @course_module.update(course_module_params)
      render json: @course_module
    else
      render json: @course_module.errors, status: :unprocessable_entity
    end
  end

  # DELETE /course_modules/1
  def destroy
    @course_module.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_module
      @course_module = CourseModule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_module_params
      params.require(:course_module).permit(:name, :course_id)
    end
end
