class ReportsController < ApplicationController
  def index
    @reports = Report.includes(:user).order("created_at DESC")
  end

  def show
    @report = Report.find(params[:id])
  end

  def new
  end

  def create
    @report = Report.create(report_params)
    redirect_to action: :index
  end

  def edit
    @report = Report.find(params[:id])
  end

  def update
    report = Report.find(params[:id])
    if current_user.id == report.user.id
      report.update(report_params)
    end
  end

  private
  
  def report_params
    params.permit(:title, :spend_hour, :spend_minute, :comment, { :images => [] })
  end
end
