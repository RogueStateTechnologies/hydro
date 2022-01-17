class CreateHealthReports < ActiveRecord::Migration[6.1]
  def change
    create_table :health_reports do |t|
      t.integer :plant_id
      t.string :plant_image
      t.integer :ph
      t.text :diagnosis
      t.text :comments

      t.timestamps
    end
  end
end
