class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :update, :edit, :destroy]
  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project
    else
      render :new
    end
  end

  def update
    if @project.update(project_params)
      redirect_to @project
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :date_completed, :link, :description, :language, :image, :featured)
  end
end
