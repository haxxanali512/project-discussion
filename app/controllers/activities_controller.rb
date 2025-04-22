class ActivitiesController < ApplicationController

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to dashboard_index_path, notice: 'Activity was successfully created.'
    else
      redirect_to dashboard_index_path, alert: 'Failed to create activity.'
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:body, :activity_type).merge(user_id: current_user.id, project_id: @current_project.id)
  end
end
