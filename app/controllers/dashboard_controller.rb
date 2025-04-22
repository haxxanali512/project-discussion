class DashboardController < ApplicationController
  include ProjectConcern
  before_action :set_current_project
  def index
    @projects = Project.all
    if @current_project
      @activities = Activity.includes(:user, :project).where(project_id: @current_project.id)
    else
      @activities = []
    end
  
    respond_to do |format|
      format.html # Render the full page for normal requests
      format.js { render partial: 'dashboard/conversation_timeline', locals: { activities: @activities } }
    end
  end
end