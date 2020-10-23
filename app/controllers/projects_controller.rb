class ProjectsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
  def index
    @project = Project.new 
    @states = Project.states.keys.to_a
  end

  def dashboard
    if params[:state].present?
      @projects = Project.where('state = ?', params[:state])
    else
       @projects = Project.all
    end
  end

  def create 
    @project = Project.new(project_params)
    @project.save
  end

  def project 
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :start_on, :end_on, :state)
  end
end
