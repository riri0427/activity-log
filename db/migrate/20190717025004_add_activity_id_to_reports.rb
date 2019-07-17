class AddActivityIdToReports < ActiveRecord::Migration[5.2]
  def change
    add_reference :reports, :activity, foreign_key: true
  end
end
