# frozen_string_literal: true

class CreateHarvestReports < ActiveRecord::Migration[6.1]
  def change
    create_table :harvest_reports do |t|
      t.integer :height_in_centimeters
      t.string  :amount_harvested
      t.integer :plant_id

      t.timestamps
    end
  end
end
