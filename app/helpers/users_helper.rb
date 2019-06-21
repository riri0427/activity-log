module UsersHelper
  def calculate_spend_time(user_reports)
    spend_hour = user_reports.sum(:spend_hour) * 60
    spend_minute = user_reports.sum(:spend_minute)
    spend_time_sum = spend_hour + spend_minute
  end

  def return_result_spend_hour(user_reports)
    spend_time_sum = calculate_spend_time(user_reports)
    result_spend_hour = (spend_time_sum / 60).floor
  end

  def return_result_spend_minute(user_reports)
    spend_time_sum = calculate_spend_time(user_reports)
    result_spend_minute = spend_time_sum % 60
  end
end
