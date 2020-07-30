class CoursesController < ApplicationController
  before_action :set_education
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  def index
    @courses = @education.courses
  end

  def show
  end

  def new
    @course = @education.courses.new
  end

  def edit
  end

  def create
    @course = @education.courses.new(course_params)

    if @course.save
      redirect_to [@education, @course]
    else
      render :new
    end
  end

  def update
    if @course.update(course_params)
      redirect_to [@education, @course]
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    redirect_to education_courses_path
  end

  private

  def set_education
    @education = Education.find(params[:education_id])
  end

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :complete, :description, :image)
  end
end
