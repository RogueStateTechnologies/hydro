class CreateHarvestReports < ActiveRecord::Migration[6.1]
  def change
    create_table :harvest_reports do |t|
      t.integer :height
      t.integer :weight
      t.integer :plant_id

      t.timestamps
    end
  end
end
