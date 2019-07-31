class ActivitiesController < ApplicationController
  def new
  end

  def create
    activity = Activity.new(activity_params)
    if activity.save
      redirect_to user_path(current_user)
    else
      redirect_to action: :new
    end
  end

  def show
    @user = User.find(params[:user_id])
    @activity = Activity.find(params[:id])
    @reports = @activity.reports
  end

  private

  def activity_params
    params.permit(:name).merge(user_id: current_user.id)
  end
end
