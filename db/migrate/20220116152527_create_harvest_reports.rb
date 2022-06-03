# frozen_string_literal: true

class CreateHarvestReports < ActiveRecord::Migration[6.1]
  def change
    create_table :harvest_reports do |t|
      t.integer :height_in_centimeters
      t.integer :amount_harvested
      t.integer :plant_id, null: false, foerign_key: true

      t.timestamps
    end
  end
end
