class ReportsController < ApplicationController
  def index
    @report = Report.includes(:user).order("created_at DESC")
  end

  def new
  end

  def create
    @report = Report.create(report_params)
    redirect_to action: :index
  end

  private
  
  def report_params
    params.permit(:title, :spend_hour, :spend_minute, :comment, { :images => [] })
  end
end
