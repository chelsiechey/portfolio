class CategoriesController < ApplicationController
  before_action :set_course
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = @course.categories
  end

  def show
  end

  def new
    @category = @course.categories.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @category = @course.categories.new(category_params)

    if @category.save
      redirect_to course_category_path(@course, @category)
    else
      render :new
    end
  end

  def update
    if @category.update(category_params)
      redirect_to course_category_path(@course, @category)
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to course_categories_path(@course)
  end

  private 

    def set_course
      @course = Course.find(params[:course_id])
    end

    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end

end
