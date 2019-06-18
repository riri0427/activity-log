class ReportsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @report = Report.create(report_params)
  end

  private
  
  def report_params
    params.permit(:title, :spend_hour, :spend_minute, :comment, :images)
  end
end
