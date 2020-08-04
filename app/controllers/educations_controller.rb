class EducationsController < ApplicationController
  before_action :set_education, only: [:show, :update, :edit, :destroy]
  before_action :set_index, only: [:index, :math, :computer_science]

  def index
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

  def math
  end

  def computer_science
  end

  private

    def set_index
      @educations = Education.all
    end

    def set_education
      @education = Education.find(params[:id])
    end

    def education_params
      params.require(:education).permit(:school, :complete, :level, :description, :image, :start_date, :end_date)
    end
end
