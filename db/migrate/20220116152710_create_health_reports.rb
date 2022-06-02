# frozen_string_literal: true

class CreateHealthReports < ActiveRecord::Migration[6.1]
  def change
    create_table :health_reports do |t|

      t.integer :plant_id, null: false, foreign_key: true
      t.integer :height_in_centimeters
      t.integer :average_air_temp
      t.integer :ph
      t.integer :light_exposure
      
      t.string :root_health

      t.text :diagnosis

      t.timestamps
    end
  end
end
