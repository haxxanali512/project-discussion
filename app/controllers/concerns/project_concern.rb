module ProjectConcern
  extend ActiveSupport::Concern

  def set_current_project
    @current_project = Project.find_by(id: session[:current_project_id])
  end
end