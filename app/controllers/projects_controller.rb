class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @project = Project.find(params[:id])
  end

def destroy
  @project = Project.find(params[:id])
  if @project.destroy
    redirect_to projects_path
  end
end

def edit
  @project = Project.find(params[:id])
end

def update
  @project = Project.find(params[:id])
  respond_to do |format|
    if @project.update(project_params)
      format.html { redirect_to @project, notice: 'Project was successfully updated.' }
      format.json { render :show, status: :ok, location: @project }
    else
      format.html { render :edit }
      format.json { render json: @project.errors, status: :unprocessable_entity }
    end
  end
end




  private

  def project_params
    params.require(:project).permit(
    :name,
    )
  end


end
