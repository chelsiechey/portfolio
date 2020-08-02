class CoursesController < ApplicationController
  before_action :set_education, only: [:index, :new, :create]
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  def index
    @courses = @education.courses
  end

  def show
  end

  def new
    @course = @education.courses.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @course = @education.courses.new(course_params)

    if @course.save
      redirect_to @course
    else
      render :new
    end
  end

  def update
    if @course.update(course_params)
      redirect_to @course
    else
      render :edit
    end
  end

  def destroy
    @education = @course.education
    @course.destroy
    redirect_to education_courses_path(@education)
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
