class ChangeColumnToReport < ActiveRecord::Migration[5.2]
  def up
    change_column :reports, :spend_hour, :integer, default: "0"
  end

  def down
    change_column :reports, :spend_hour, :integer
  end
end
