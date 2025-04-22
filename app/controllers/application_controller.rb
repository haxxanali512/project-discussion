class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_current_project

  def set_current_project
    @current_project = Project.find_by(id: session[:current_project_id])
  end
end
