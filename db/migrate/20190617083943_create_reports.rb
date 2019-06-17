class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string      :title,        index: true, null: false
      t.integer     :spend_hour
      t.integer     :spend_minute, null: false
      t.string      :image
      t.text        :comment
      t.timestamps
    end
  end
end
