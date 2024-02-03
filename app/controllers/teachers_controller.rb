class TeachersController < ApplicationController
  before_action :current_teacher, only: [:show, :edit, :update, :destroy]

  def index
    @teachers = Teacher.all
  end

  def show

  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.create(teacher_params)

    redirect_to teachers_path(@teacher)
  end

  def edit

  end

  def update
    @teacher.update(teacher_params)

    redirect_to teacher_path(@teacher)
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy

    redirect_to teachers_path
  end

  private
  def teacher_params
    params.require(:teacher).permit(:name, :subject, :classroom_id)
  end

  def current_teacher
    @teacher = Teacher.find(params[:id])
  end
end
