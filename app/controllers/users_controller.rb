class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @activities = user.activities
    @reports = user.reports.order("created_at DESC")
  end
end
