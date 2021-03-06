class ReportsController < ApplicationController
  def index
    @reports = Report.includes(:user).order("created_at DESC").page(params[:page]).per(10)
  end

  def show
    @report = Report.find(params[:id])
  end

  def new
    @activities = current_user.activities
  end

  def create
    @report = Report.create(report_params_create)
    redirect_to action: :index
  end

  def edit
    @report = Report.find(params[:id])
    @activities = current_user.activities
  end

  def update
    report = Report.find(params[:id])
    if current_user.id == report.user.id
      report.update(report_params_update)
    end
    redirect_to action: :index
  end

  private
  
  def report_params_create
    params.permit(:title, :spend_hour, :spend_minute, :comment, { :images => [] }, :activity_id).merge(user_id: current_user.id)
  end

  def report_params_update
    params.require(:report).permit(:title, :spend_hour, :spend_minute, :comment, { :images => [] })
  end
end
