class ClassroomsController < ApplicationController
    before_action :current_classroom, only: [:show, :edit, :update, :destroy]

    def index
      @classrooms = Classroom.all
    end

    def show

    end

    def new
      @classroom = Classroom.new
    end

    def create
      if Current.user.admin?
        @classroomr = Classroom.create(classroom_params)
      end
      redirect_to classrooms_path(@classroom)
    end

    def edit

    end

    def update
      if Current.user.admin?
         @classroom.update(classroom_params)
      end
        redirect_to classroom_path(@classroom)
    end

    def destroy
      if Current.user.admin?
        @classroom = Classroom.find(params[:id])
        @classroom.destroy
      end
        redirect_to classrooms_path
    end

    private
    def classroom_params
      params.require(:classroom).permit(:section, :course)
    end

    def current_classroom
      @classroom = Classroom.find(params[:id])
    end
end
