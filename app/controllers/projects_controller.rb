class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end


  def new
    @project = Project.new
  end


  def create
    @project = Project.new(project_params)

    if @project.save
      flash[:success] = 'New project created.'
      redirect_to projects_path
    else
      flash[:error] = 'Project could not be created.'
      render 'new'
    end
  end


  def edit
    @project = Project.find(params[:id])
  end


  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      flash[:success] = 'Project saved'
      redirect_to projects_path
    else
      flash[:error] = 'Project could not be saved.'
      render 'edit'
    end
  end

  private

  def project_params
    params.required(:project).permit(:name)
  end
end
