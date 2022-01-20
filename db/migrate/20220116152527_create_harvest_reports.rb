class CreateHarvestReports < ActiveRecord::Migration[6.1]
  def change
    create_table :harvest_reports do |t|
      t.integer :height
      t.integer :weight_wet_in_grams
      t.integer :weight_dry_in_grams
      t.integer :total_wattage_used
      t.integer :total_water_used_in_milileters
      t.integer :water_per_gram_in_milileters
      t.integer :wattage_per_gram
      t.integer :plant_id

      t.timestamps
    end
  end
end
