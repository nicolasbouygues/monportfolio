class ProjectsController < ApplicationController
    def index
      @projects = Project.all
    end

    def show
      @project = Project.find(params[:id])
    end

    def new
      @project = Project.new
    end

    def create
      @project = Project.new(project_params)
      @project.save

      # no need for app/views/projects/create.html.erb
      redirect_to project_path(@project)
    end

private

    def project_params
      params.require(:project).permit(:title, :description, :technologies, :creation_date, photos: [])
    end
end
