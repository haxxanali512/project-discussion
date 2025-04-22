class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    respond_to do |format|
      format.html # Render the HTML view
      format.json { render json: @projects } # Return JSON for AJAX requests
    end
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      render json: @project, status: :ok
    else
      render json: { errors: @project.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def set_project
    session[:current_project_id] = params[:project_id]
    head :ok
  end

  def update_status
    old_status = @current_project.status
    new_status = params[:status]
  
    if @current_project.update(status: new_status)
      Activity.create(
        user_id: current_user.id,
        project_id: @current_project.id,
        activity_type: 'status_change',
        body: "#{current_user.name} changed the project status from '#{old_status.humanize}' to '#{new_status.humanize}'"
      )
      head :ok
    else
      head :unprocessable_entity
    end
  end

  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      head :no_content
    else
      render json: { errors: 'Failed to delete project' }, status: :unprocessable_entity
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :start_date, :due_date, :status)
  end
end