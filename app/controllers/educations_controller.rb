class EducationsController < ApplicationController
  before_action :set_education, only: [:show, :update, :edit, :destroy]

  def index
    @educations = Education.all
  end

  def show
  end

  def new
    @education = Education.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @education = Education.new(education_params)

    if @education.save
      redirect_to @education
    else
      render :new
    end
  end

  def update
    if @education.update(education_params)
      redirect_to @education
    else
      render :edit
    end
  end

  def destroy
    @education.destroy
    redirect_to educations_path
  end

  private

    def set_education
      @education = Education.find(params[:id])
    end

    def education_params
      params.require(:education).permit(:school, :complete, :level, :description, :image)
    end
end
