class ProjectsController < ApplicationController
  def index
    @project = Project.new 
    @states = Project.states.keys.to_a
  end

  def dashboard
    @projects = Project.all
  end

  def create 
    @project = Project.create(project_params)
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :start_on, :end_on, :states)
  end
end
