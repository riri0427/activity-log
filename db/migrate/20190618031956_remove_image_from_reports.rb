class RemoveImageFromReports < ActiveRecord::Migration[5.2]
  def change
    remove_column :reports, :image, :string
  end
end
